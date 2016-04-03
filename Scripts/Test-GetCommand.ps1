<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.117
	 Created on:   	3/16/2016 4:15 PM
	 Created by:   	 June Blender
	 Organization: 	SAPIEN Technologies, Inc
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
$TestZipPath = 'C:\ps-test\TestZip'
Remove-Item $TestZipPath\*.xlsx

Get-Command -Name Expand-Archive*
Get-Command -Name Expand-Archive
Get-Command -Name Expand-Archive* | Format-List Name, CommandType, Version, Source, @{ L = "ModulePath"; E = { $_.Module.ModuleBase } }

PSCX\Expand-Archive -Path $TestZipPath\*.zip -OutputPath $TestZipPath
dir $TestZipPath

Import-Module -Name PSCX -RequiredVersion 3.2.1.0 -PassThru
if ($ExpArch = Get-Command Expand-Archive -FullyQualifiedModule @{ ModuleName = 'PSCX'; RequiredVersion = '3.2.1.0' })
{
	& $ExpArch -Path $TestZipPath\*.zip -OutputPath $TestZipPath
	dir $TestZipPath
}
 
Get-Command New-Fixture*
Get-Command New-Fixture -FullyQualifiedModule @{ ModuleName = 'Pester'; RequiredVersion = '3.3.11' }

Import-Module -Name Pester -RequiredVersion '3.3.11' -PassThru
Get-Command New-Fixture -FullyQualifiedModule @{ ModuleName = 'Pester';  RequiredVersion='3.3.11'}

















