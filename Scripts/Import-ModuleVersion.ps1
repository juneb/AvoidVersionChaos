<#
What does Import-Module import?
It imports the newest version in the first directory it encounters that has any version of the module.
Order is determined by $env:PSModulePath

#>
break;

Get-Module -ListAvailable Pester
Import-Module Pester -PassThru

Get-Module -List PSScriptAnalyzer
Import-Module PSScriptAnalyzer -PassThru

Import-Module PSScriptAnalyzer -RequiredVersion 1.7.0 -PassThru
Get-Module -ListAvailable PSScriptAnalyzer | Sort-Object Version -Descending | Select-Object -First 1 | Import-Module -PassThru

##

# Import-Module Version Parameters
(Get-Command Import-Module).ParameterSets.Parameters.Name | where {$_ -like "*version" -or $_ -like "Fully*"} | Sort -Unique