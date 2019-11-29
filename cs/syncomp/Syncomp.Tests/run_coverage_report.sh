#!/bin/sh

dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=opencover
dotnet reportgenerator "-reports:coverage.opencover.xml" "-targetdir:coveragereport"
google-chrome ./coveragereport/index.htm
