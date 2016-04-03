<#	
PS C:\ps-test> Get-Module -List Pester
    Directory: C:\Users\JuneBlender\Documents\WindowsPowerShell\Modules
ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Script     3.4.0      Pester                              {Describe, Context, It, Should...}
Script     3.3.11     Pester                              {Describe, Context, It, Should...}
Script     3.3.9      Pester                              {Describe, Context, It, Should...}
    Directory: C:\Program Files\WindowsPowerShell\Modules
ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Script     3.3.10     Pester                              {Describe, Context, It, Should...}
Script     3.3.8      Pester                              {Describe, Context, It, Should...}
Script     3.3.5      Pester                              {Describe, Context, It, Should...}
#>

# Minimum version
Import-Module Pester -Version 3.3.8 -PassThru
Import-Module Pester -MinimumVersion 3.3.8 -PassThru  #MinimumVersion is an alias of Version
Import-Module -FullyQualifiedName @{ModuleName='Pester'; ModuleVersion='3.3.8'} -PassThru

# Maximum version
Import-Module -Name Pester -MaximumVersion 3.3.10 -PassThru
Import-Module -FullyQualifiedName @{ ModuleName = 'Pester'; MaximumVersion = '3.3.10' } -PassThru

# Required version
Import-Module Pester -RequiredVersion 3.3.8 -PassThru
Import-Module -FullyQualifiedName @{ ModuleName = 'Pester'; RequiredVersion = '3.3.8' } -PassThru

# GUID
Import-Module -Passthru -FullyQualifiedName @{
	ModuleName = 'Pester';
	ModuleVersion = '3.3.8';
	GUID = 'a699dea5-2c73-4616-a270-1f7abb777e71'
}












