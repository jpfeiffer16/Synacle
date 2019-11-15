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

class DefinitionHandler : IDefinitionHandler
{
    private readonly ILanguageServer _server;
    private readonly BufferManager _bufferManager;
    private readonly TextDocumentSyncKind _changeType = TextDocumentSyncKind.Full;

    public DefinitionHandler(ILanguageServer server, BufferManager bufferManager)
    {
        _server = server;
        _bufferManager = bufferManager;
    }

    private readonly DocumentSelector _documentSelector = new DocumentSelector(new DocumentFilter
    {
        Pattern = "**/*.bc"
    });

    public TextDocumentRegistrationOptions GetRegistrationOptions() => new TextDocumentRegistrationOptions
    {
        DocumentSelector = _documentSelector
        // SyncKind = _changeType
    };

    public Task<LocationOrLocationLinks> Handle(DefinitionParams request, CancellationToken cancellationToken)
    {
		_server.Window.LogInfo("GotoDef");
		return Task.FromResult(new LocationOrLocationLinks());
    }

    public void SetCapability(DefinitionCapability capability)
    {
    }
}
