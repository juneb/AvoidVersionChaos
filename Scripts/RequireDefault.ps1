#Requires -Module @{ModuleName='PSScriptAnalyzer'; RequiredVersion='1.7.0'}
Get-Module PSScriptAnalyzer

<#	

Get-Module -ListAvailable Pester
#Requires -Module Pester
Get-Module Pester

Get-Module -List PSScriptAnalyzer
#Requires -Module PSScriptAnalyzer
Get-Module PSScriptAnalyzer

#Requires -Module @{ModuleName='PSScriptAnalyzer'; RequiredVersion='1.7.0'}
Get-Module PSScriptAnalyzer

##

# Import-Module Version Parameters
(Get-Command Import-Module).ParameterSets.Parameters.Name | Where-Object {
	$_ -like "*version" -or $_ -like "Fully*"
} | Sort-Object -Unique

#>
