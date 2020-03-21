#!/bin/sh
dotnet build
cd bin/Debug/netstandard2.0/
mono ../../../../mono-wasm/packager.exe --debug --copy=always --out=./publish --asset=./index.html --asset=./script.js ./Syncomp.StaticWeb.dll ./Newtonsoft.Json.dll
