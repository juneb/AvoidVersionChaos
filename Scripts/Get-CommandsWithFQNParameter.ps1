<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.99
	 Created on:   	1/12/2016 12:42 PM
	 Created by:   	 June Blender
	 Organization: 	SAPIEN Technologies, Inc
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
Import-Module PowerShellGet

$a = Get-Command -ParameterName FullyQualified*
Get-Command -ParameterName FullyQualified* | ft Name, @{ L = 'Parameter'; E = { $_.ParameterSets.Parameters.Name | Where { $_ -like "Fully*" } | Sort -Unique } }