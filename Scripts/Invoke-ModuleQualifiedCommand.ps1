<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.99
	 Created on:   	1/11/2016 3:53 PM
	 Created by:   	 June Blender
	 Organization: 	SAPIEN Technologies, Inc
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
Get-Command Expand-Archive* | foreach { Remove-Module $_.Module }
#>
break;

# Module-qualified command
Import-Module Pscx -RequiredVersion 3.2.1.0
PSCX\Expand-Archive -Path $HOME\Downloads\*January2016.zip -OutputPath C:\ps-test -Force -Passthru

# Fully-qualified command
Import-Module Pscx -RequiredVersion 3.2.1.0 -PassThru
$eaPSCX = Get-Command Expand-Archive -FullyQualifiedModule @{ ModuleName = 'PSCX';  RequiredVersion = '3.2.1.0'}
& $eaPSCX -Path "$HOME\Downloads\*January2016.zip" -OutputPath "C:\ps-test" -Force -Passthru

# Module-qualified command
Pester\New-Fixture -Path C:\ps-test\Pester -Name Test1

# Fully-qualified command
$spec =  @{ ModuleName = 'Pester'; RequiredVersion = '3.3.9'; GUID = 'a699dea5-2c73-4616-a270-1f7abb777e71' }
Import-Module -FullyQualifiedName $spec -PassThru

if ($nf = Get-Command -Name New-Fixture -FullyQualifiedModule $spec)
{
	& $nf -Path C:\ps-test\Pester -Name .\MSTest
}
else
{
	Write-Error "Can't find required command."
}
















