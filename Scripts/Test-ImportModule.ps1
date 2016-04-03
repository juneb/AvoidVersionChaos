<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.99
	 Created on:   	1/12/2016 3:51 PM
	 Created by:   	 June Blender
	 Organization: 	SAPIEN Technologies, Inc
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

# Get all versions of the module
Get-Module -List Pester

#Find the module that is imported by default
Import-Module Pester -PassThru
Remove-Module Pester

#Not always the latest version
Get-Module -List PSReadline
Import-Module -Name PSReadline -PassThru
Remove-Module -Name PSReadline

# Fully qualified module
Import-Module -Name Pester -RequiredVersion 3.3.9
Get-Module -FullyQualifiedName @{ ModuleName = 'Pester'; RequiredVersion = '3.3.9'; Guid = 'a699dea5-2c73-4616-a270-1f7abb777e71' }

# Version is a minimum version
Import-Module -Name Pester -Version 3.3.9 -PassThru
Import-Module -Name Pester -MinimumVersion 3.3.9 -PassThru

# Maximum version
Import-Module -Name Pester -MaximumVersion 3.3.7 -PassThru

# Required version
Import-Module -Name Pester -RequiredVersion 3.3.9 -PassThru

# Fully qualified module
Import-Module -FullyQualifiedName @{ ModuleName = 'Pester'; RequiredVersion = 3.3.9; Guid = 'a699dea5-2c73-4616-a270-1f7abb777e71' }


