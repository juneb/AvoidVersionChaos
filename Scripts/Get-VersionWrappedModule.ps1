<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.99
	 Created on:   	1/7/2016 3:41 PM
	 Created by:   	 June Blender
	 Organization: 	SAPIEN Technologies, Inc
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

#Get-Module -ListAvailable | Where { $_.ModuleBase -match '\\(\d+\.)?(\d+\.)?(\d+\.)?(\*|\d+)$\z' }
#[System.Version]::TryParse($_.ModuleBase.split('\')[-1], $v)

Get-Module -ListAvailable | Where {
	
	[ref]$v = 0.0.0.0
	[System.Version]::TryParse((Split-Path $_.ModuleBase -Leaf), $v)
	
}