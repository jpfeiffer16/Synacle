#!/bin/sh

dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=opencover
dotnet reportgenerator "-reports:coverage.opencover.xml" "-targetdir:coveragereport"
xdg-open ./coveragereport/index.htm
