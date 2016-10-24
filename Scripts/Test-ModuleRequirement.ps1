# Requires -Module @{ ModuleName = 'Pester'; ModuleVersion = '3.3.10'}
# Requires -Module @{ ModuleName = 'Pester'; MaximumVersion = '3.3.10'}
#Requires -Module @{ ModuleName = 'Pester'; RequiredVersion = '3.3.10'}
Get-Module Pester

<#
Get-Module Pester -List

Directory: C:\Users\JuneBlender\Documents\WindowsPowerShell\Modules

ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Script     3.4.3      Pester                              {Describe, Context, It, Should...}
Script     3.4.1      Pester                              {Describe, Context, It, Should...}
Script     3.4.0      Pester                              {Describe, Context, It, Should...}
Script     3.3.11     Pester                              {Describe, Context, It, Should...}
Script     3.3.9      Pester                              {Describe, Context, It, Should...}

    Directory: C:\Program Files\WindowsPowerShell\Modules

ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Script     3.4.0      Pester                              {Describe, Context, It, Should...}
Script     3.3.10     Pester                              {Describe, Context, It, Should...}
Script     3.3.8      Pester                              {Describe, Context, It, Should...}
Script     3.3.5      Pester                              {Describe, Context, It, Should...}
#>

<#

#Requires -Module @{ ModuleName = 'Pester'; ModuleVersion = '3.3.10'}
#Requires -Module @{ ModuleName = 'Pester'; MaximumVersion = '3.3.10'}
#Requires -Module @{ ModuleName = 'Pester'; RequiredVersion = '3.3.10'}

Using module @{ ModuleName = 'Pester'; RequiredVersion = '3.3.10'}

#>
<#
Get-Module PowerShellLogging -ListAvailable
Import-Module PowerShellLogging -Passthru
Get-Module PowerShellLogging -ListAvailable | Format-List ModuleBase, GUID

Import-Module -FullyQualifiedName @{
	ModuleName = 'PowerShellLogging';
	ModuleVersion = '1.1.0.1';
	GUID = '345320b5-bdc3-4ab6-a13e-fcb019362fe6'} -Passthru
Get-Module PowerShellLogging | Format-List Name, ModuleBase, GUID
#>

