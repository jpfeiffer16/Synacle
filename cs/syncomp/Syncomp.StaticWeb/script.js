let staticBinding;
let assemblyOutput;
let diagnosticsOutput;
let button;
let input;

var App = {
    // onClick: function () {
    //     that.assemblyOutput.value = "Please wait";
    //
    //     that.assemblyOutput.value = that.execute("Ali");
    // },
    init: function () {
        staticBinding = Module.mono_bind_static_method("[Syncomp.StaticWeb] StaticWeb.Program:CompileCode");
        assemblyOutput = document.getElementById("assembly-output");
        diagnosticsOutput = document.getElementById("diagnostic-output");
        button = document.getElementById("button");
        input = document.getElementById("input");

        button.disabled = false;
    }
};

document.getElementById("button").addEventListener("click", () => {
    // console.log(input.value);
    let result = staticBinding(input.value);
    // console.log(result);
    let { assembly, diagnostics } = JSON.parse(result);
    // console.log(assembly);
    // console.log(diagnostics);
    assemblyOutput.innerText = assembly;
    diagnostics.forEach(diagnostic => {
        var li = document.createElement(li)
        li.innerText = diagnostic.fullMessage;
        diagnosticsOutput.appendChild();
    });
});

document.body.addEventListener("load", App.init);
