# See PSVersion
$PSVersionTable.PSVersion

# See a non-versioned module
dir $HOME\Documents\WindowsPowerShell\Modules\MicrosoftHealth

# See a versioned module
dir $HOME\Documents\WindowsPowerShell\Modules\PowerForensics

Get-Module -List PowerForensics | Format-Table Name, ModuleBase

# Get-InstalledModule
Get-InstalledModule | foreach { Get-InstalledModule -Name $_.Name -AllVersions }

# Get-VersionWrappedModule
Get-Module -ListAvailable | Where {
	
	[ref]$v = 0.0.0.0
	[System.Version]::TryParse((Split-Path $_.ModuleBase -Leaf), $v)
	
}
