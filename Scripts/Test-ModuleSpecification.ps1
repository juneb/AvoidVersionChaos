<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.99
	 Created on:   	1/8/2016 3:43 PM
	 Created by:   	 June Blender
	 Organization: 	SAPIEN Technologies, Inc
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

#Use a string
Import-Module -FullyQualifiedName Pester 
Get-Command -Name New-Fixture -FullyQualifiedModule Pester

# Create a ModuleSpecification object
# Create object from hashtable:  about_Object_Creation
$spec = New-Object -TypeName Microsoft.PowerShell.Commands.ModuleSpecification
$spec | Get-Member
[Microsoft.PowerShell.Commands.ModuleSpecification]::New
[Microsoft.PowerShell.Commands.ModuleSpecification]@{ ModuleName = 'Pester'; RequiredVersion = '3.3.9' }

#Use a hash table
#ModuleVersion == MinimumVersion
Import-Module -FullyQualifiedName @{ ModuleName = 'Pester'; ModuleVersion = '3.3.5' } -PassThru
Get-Command -Name New-Fixture -FullyQualifiedModule @{ ModuleName = 'Pester'; ModuleVersion = '3.3.5' }

#RequiredVersion property was added in PowerShell 5.0.
Import-Module 'Pester' -RequiredVersion '3.3.8' -PassThru
Get-Command -Name New-Fixture -FullyQualifiedModule @{ ModuleName = 'Pester'; RequiredVersion = '3.3.8' }

$nf = Get-Command -Name New-Fixture -FullyQualifiedModule @{ ModuleName = 'Pester'; RequiredVersion = '3.3.8' }
&$nf -Path c:\ps-test\Pester -Name TestGetCommand

#MaximumVersion property was added in PowerShell 5.0.
Get-Command -Name New-Fixture -FullyQualifiedModule @{ ModuleName = 'Pester'; MaximumVersion = '3.3.7' }
Import-Module -Name Pester -MaximumVersion 3.3.7 -PassThru
Remove-Module -FullyQualifiedName @{ ModuleName = 'Pester'; MaximumVersion = '3.3.11' } 

#Guid is optional. Typically distinguishes modules, not versions.
Get-Command -Name New-Fixture -FullyQualifiedModule @{ ModuleName = 'Pester'; RequiredVersion = '3.3.9'; Guid = 'a699dea5-2c73-4616-a270-1f7abb777e71' }
Import-Module -FullyQualifiedName @{ ModuleName = 'Pester'; RequiredVersion = '3.3.9'; Guid = 'a699dea5-2c73-4616-a270-1f7abb777e71' } -PassThru

#Use default constructor to create an object from a hash table.
[Microsoft.PowerShell.Commands.ModuleSpecification]::New
$spec = [Microsoft.PowerShell.Commands.ModuleSpecification]@{ ModuleName = 'Pester'; RequiredVersion = '3.3.8' }
$spec = [Microsoft.PowerShell.Commands.ModuleSpecification]@{ ModuleName = 'Pester'; MaximumVersion = '3.3.9' }
Get-Command -Name New-Fixture -FullyQualifiedModule $spec
Import-Module -FullyQualifiedName $spec -PassThru

#All properties are read-only (get, not set)
$newSpec = New-Object -TypeName Microsoft.PowerShell.Commands.ModuleSpecification
$newSpec | Get-Member