<#
	.SYNOPSIS
		A brief description of the  file.
	
	.DESCRIPTION
		A description of the file.
	
	.PARAMETER ExcludeCmd
		A description of the ExcludeCmd parameter.
	
	.PARAMETER ExcludeParameter
		A description of the ExcludeParameter parameter.
	
	.PARAMETER Command
		A description of the Command parameter.
	
	.PARAMETER Exclude
		A description of the Exclude parameter.
	
	.PARAMETER Cmdlet
		A description of the Cmdlet parameter.
	
	.NOTES
		===========================================================================
		Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.99
		Created on:   	1/7/2016 4:47 PM
		Created by:   	 June Blender
		Organization: 	SAPIEN Technologies, Inc
		Filename:
		===========================================================================
#>
param
(
	[string[]]
	$CommandName,
	
	[string[]]
	$ExcludeCmd = ('Get-Process', 'New-WinEvent'),
	
	[string[]]
	$ExcludeParameter = ('ClrVersion', 'DotNetVersion', 'DotNetFrameworkVersion', 'SchemaVersion')
)

Import-Module PowerShellGet

if ($CommandName)
{	
	$commands = Get-Command $CommandName
}
else
{
	$commands = Get-Command | where { $_.Name -notin $ExcludeCmd }
}

foreach ($cmd in $commands)
{	
	if ($parm = $cmd.ParameterSets.Parameters.Name | where { ($_ -like "*version*") -and $_ -notin $ExcludeParameter } | Sort -Unique)
	{
		foreach ($p in $parm)
		{
			[PSCustomObject]@{ 'Command' = $cmd.Name; 'Module' = $cmd.ModuleName; 'Version' = $cmd.Version; 'Parameter' = $p }
		}
	}
}