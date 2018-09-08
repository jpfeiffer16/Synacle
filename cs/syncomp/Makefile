install:
	dotnet publish -r linux-x64 --self-contained
	mkdir -p /usr/dotnet/syncomp
	cp -r bin/Debug/netcoreapp2.0/linux-x64/publish/* /usr/dotnet/syncomp/
	printf "#!/bin/sh\ndotnet /usr/dotnet/syncomp/syncomp.dll \$$@" > /usr/bin/syncomp
	chmod +x /usr/bin/syncomp

uninstall:
	rm -r /usr/dotnet/syncomp
	rm /usr/bin/syncomp