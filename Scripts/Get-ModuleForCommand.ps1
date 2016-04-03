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
#>
Get-Module -ListAvailable PowerShellLogging

Get-Module -ListAvailable PowerShellLogging | Format-Table Name, ModuleBase, GUID

Get-Module -ListAvailable -FullyQualifiedName @{
	ModuleName = 'PowerShellLogging';
	RequiredVersion = '1.1.0.1';
	GUID = '345320b5-bdc3-4ab6-a13e-fcb019362fe6'
}
