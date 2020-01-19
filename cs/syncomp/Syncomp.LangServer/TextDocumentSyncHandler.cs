using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using OmniSharp.Extensions.Embedded.MediatR;
using OmniSharp.Extensions.LanguageServer.Protocol;
using OmniSharp.Extensions.LanguageServer.Protocol.Client.Capabilities;
using OmniSharp.Extensions.LanguageServer.Protocol.Models;
using OmniSharp.Extensions.LanguageServer.Protocol.Server;
using OmniSharp.Extensions.LanguageServer.Protocol.Server.Capabilities;
using syncomp;

class TextDocumentSyncHandler : ITextDocumentSyncHandler
{
    private readonly ILanguageServer _server;
    private readonly BufferManager _bufferManager;
    private readonly TextDocumentSyncKind _changeType = TextDocumentSyncKind.Full;
    private readonly DocumentSelector _documentSelector = new DocumentSelector(new DocumentFilter
    {
        Pattern = "**/*.bc"
    });

    private SynchronizationCapability _capability;

    public TextDocumentSyncHandler(ILanguageServer server, BufferManager bufferManager)
    {
        _server = server;
        _bufferManager = bufferManager;
    }

    public TextDocumentChangeRegistrationOptions GetRegistrationOptions() => new TextDocumentChangeRegistrationOptions
    {
        DocumentSelector = _documentSelector,
        SyncKind = _changeType
    };

    public TextDocumentAttributes GetTextDocumentAttributes(Uri uri)
    {
        return new TextDocumentAttributes(uri, "bc");
    }

    public Task<Unit> Handle(DidChangeTextDocumentParams request, CancellationToken cancellationToken)
    {
        SurfaceDiagnostics(request.TextDocument.Uri, request.ContentChanges.FirstOrDefault()?.Text);
        return Unit.Task;
    }

    private void SurfaceDiagnostics(Uri uri, string text)
    {
        try
        {
            var preprocessor = new PreProcessor(uri.AbsolutePath, text);
            var prepCtx = preprocessor.BuildContext();
            var tokens = new List<SyntaxToken>();
            foreach (var file in prepCtx)
            {
                //TODO: Fix this tuple nonsense
                var lexer = new Lexer(file.Key, file.Value);
                tokens.AddRange(lexer.Lex());
            }
            tokens = tokens.Where(tkn => tkn.Type != SyntaxTokenType.Space).ToList();
            var parser = new Parser(tokens);
            (_, var ast) = parser.Parse();
            var checker = new Checker(ast);
            var diagnostics = checker.Check();
            _server.Document.PublishDiagnostics(new PublishDiagnosticsParams
            {
                Uri = uri,
                Diagnostics = diagnostics.Select(di => new OmniSharp.Extensions.LanguageServer.Protocol.Models.Diagnostic
                {
                    // Code = OmniSharp.Extensions.LanguageServer.Protocol.Models.DiagnosticCode
                    Severity = DiagnosticSeverity.Error,
                    Message = di.FullMessage,
                    Range = new OmniSharp.Extensions.LanguageServer.Protocol.Models.Range
                    {
                        Start = new OmniSharp.Extensions.LanguageServer.Protocol.Models.Position
                        {
                            Line = di.Line - 1,
                            Character = di.Column
                        },
                        End = new OmniSharp.Extensions.LanguageServer.Protocol.Models.Position
                        {
                            Line = di.EndLine - 1,
                            Character = di.EndColumn
                        }
                    }
                }).ToList()
            });
        }
        catch (Exception e)
        {
            _server.Window.LogError(e.ToString());
            if (e is ParseException)
            {
                _server.Window.LogError(e.InnerException.ToString());
            }
        }
    }

    public Task<Unit> Handle(DidOpenTextDocumentParams request, CancellationToken cancellationToken)
    {
        _bufferManager.UpdateBuffer(request.TextDocument.Uri.ToString(), request.TextDocument.Text);
        SurfaceDiagnostics(request.TextDocument.Uri, request.TextDocument.Text);
        return Unit.Task;
    }

    public Task<Unit> Handle(DidCloseTextDocumentParams request, CancellationToken cancellationToken)
    {
        return Unit.Task;
    }

    public Task<Unit> Handle(DidSaveTextDocumentParams request, CancellationToken cancellationToken)
    {
        return Unit.Task;
    }

    public void SetCapability(SynchronizationCapability capability)
    {
    }

    TextDocumentRegistrationOptions IRegistration<TextDocumentRegistrationOptions>.GetRegistrationOptions()
    {
        return new TextDocumentChangeRegistrationOptions()
        {
            DocumentSelector = _documentSelector,
            SyncKind = _changeType
        };
    }

    TextDocumentSaveRegistrationOptions IRegistration<TextDocumentSaveRegistrationOptions>.GetRegistrationOptions()
    {
        return new TextDocumentSaveRegistrationOptions()
        {
            DocumentSelector = _documentSelector
        };
    }
}
