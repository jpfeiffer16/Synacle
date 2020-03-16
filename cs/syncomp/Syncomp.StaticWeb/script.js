let staticBinding;
let output;
let button;
let input;

var App = {
    // onClick: function () {
    //     that.output.value = "Please wait";
    //
    //     that.output.value = that.execute("Ali");
    // },
    init: function () {
        staticBinding = Module.mono_bind_static_method("[Syncomp.StaticWeb] Program:CompileCode");
        output = document.getElementById("output");
        button = document.getElementById("button");
        input = document.getElementById("input");

        button.disabled = false;
    }
};

document.getElementById("button").addEventListener("click", () => {
    console.log(input.value);
    let result = staticBinding(input.value);
    output.value = result;
});

document.body.addEventListener("load", App.init);
