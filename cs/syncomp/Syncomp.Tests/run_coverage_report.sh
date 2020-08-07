#!/bin/sh

# dotnet test --filter "FullyQualifiedName!~CheckerNegativeTests&FullyQualifiedName!~CheckerPositiveTests" /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:Exclude=\"[Syncomp.Tests]syncomp.Tests.CheckerNegativeTests\"
# dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:Exclude=\"[Syncomp.Tests]syncomp.Tests.CheckerNegativeTests\"
# dotnet reportgenerator "-reports:coverage.opencover.xml" "-targetdir:coveragereport"
# xdg-open ./coveragereport/index.htm

rm -r TestResults
dotnet test --collect:"XPlat Code Coverage" --settings coverlet.runsettings
dotnet reportgenerator "-reports:./TestResults/*/coverage.opencover.xml" "-targetdir:coveragereport"
xdg-open ./coveragereport/index.htm
# dotnet test --filter "FullyQualifiedName!~CheckerNegativeTests&FullyQualifiedName!~CheckerPositiveTests" /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:Exclude=\"[Syncomp.Tests]syncomp.Tests.CheckerNegativeTests\"
# dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:Exclude=\"[Syncomp.Tests]syncomp.Tests.CheckerNegativeTests\"
# dotnet reportgenerator "-reports:coverage.opencover.xml" "-targetdir:coveragereport"
# xdg-open ./coveragereport/index.htm
