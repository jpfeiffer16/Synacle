dotnet bin/Debug/netcoreapp2.0/compiler.dll programs/example.bc
#dotnet run
cd ../../
node assembler/asm.js cs/compiler/programs/example.asm
node vm -d -b cs/compiler/programs/example.bin
#dotnet cs/vm/bin/Debug/netcoreapp2.0/cs.dll -b cs/compiler/example.bin
