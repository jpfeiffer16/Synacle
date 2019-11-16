install: uninstall
	#Install library code for includes
	mkdir -p /usr/include/bc
	cp programs/lib/* /usr/include/bc/
	#Install the syncomp command
	dotnet publish Syncomp.Cli.csproj -r linux-x64 --self-contained
	mkdir -p /usr/dotnet/syncomp
	cp -r bin/Debug/netcoreapp2.0/linux-x64/publish/* /usr/dotnet/syncomp/
	printf "#!/bin/sh\nINCLUDE=/usr/include/bc dotnet /usr/dotnet/syncomp/Syncomp.Cli.dll \$$@" > /usr/bin/syncomp
	chmod +x /usr/bin/syncomp

uninstall:
	rm -r /usr/include/bc || true
	rm -r /usr/dotnet/syncomp || true
	rm /usr/bin/syncomp || true
