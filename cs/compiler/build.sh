dotnet run
cd ../../
node assembler/asm.js cs/compiler/example.asm
node vm -b cs/compiler/example.bin
#dotnet cs/vm/bin/Debug/netcoreapp2.0/cs.dll -b cs/compiler/example.bin
