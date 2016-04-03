<#	
.SYNOPSIS
Gets commands with the same name in modules with different names.

.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.99
	 Created on:   	1/9/2016 3:52 PM
	 Created by:   	 June Blender
	 Organization: 	SAPIEN Technologies, Inc
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

# Get commands with the same name
$g = Get-Command | Group-Object -Property Name | where Count -GT 1

# Get commands with the same name in modules with different names
$diftModules = Get-Command | Group-Object -Property Name | where { $_.Count -GT 1 -and ($_.Group | Group-Object -Property Source).Length -gt 1 }
$diftModules | Format-List -Property Name, @{ L = 'Module'; E = { $_.Group.Source } }

# Get commands with the same name in modules with same names
$diftVersions = Get-Command | Group-Object -Property Name | where { $_.Count -GT 1 -and ($_.Group | Group-Object -Property Source).Length -eq 1 }
$diftVersions | Format-List -Property Name, @{ L = 'Module'; E = { $_.Group.Source } }