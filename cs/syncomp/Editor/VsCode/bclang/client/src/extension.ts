import * as path from 'path';
import { workspace, ExtensionContext } from 'vscode';

import {
    LanguageClient,
    LanguageClientOptions,
    ServerOptions,
    TransportKind
} from 'vscode-languageclient';

let client: LanguageClient;

export function activate(context: ExtensionContext) {

    // If the extension is launched in debug mode then the debug server options are used
    // Otherwise the run options are used
    // let serverOptions: ServerOptions = {
    //     run: { module: serverModule, transport: TransportKind.ipc },
    //     debug: {
    //         module: serverModule,
    //         transport: TransportKind.ipc,
    //         options: debugOptions
    //     }
    // };

    // Options to control the language client
    let clientOptions: LanguageClientOptions = {
        // Register the server for plain text documents
        documentSelector: [{ scheme: 'file', language: 'plaintext' }],
        synchronize: {
            // Notify the server about file changes to '.clientrc files contained in the workspace
            fileEvents: workspace.createFileSystemWatcher('**/.clientrc')
        }
    };

    // Create the language client and start the client.
    client = new LanguageClient(
        'bclangserver',
        {
            command: 'dotnet',
            args: [
                '/home/jpfeiffer/Source/Synacle/cs/syncomp/Syncomp.LangServer/bin/Debug/netcoreapp3.0/Syncomp.LangServer.dll'
            ]
        },
        clientOptions
    );

    // Start the client. This will also launch the server
    client.start();
}

export function deactivate(): Thenable<void> | undefined {
    if (!client) {
        return undefined;
    }
    return client.stop();
}