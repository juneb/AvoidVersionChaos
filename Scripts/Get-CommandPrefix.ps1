<#	
# Names look prefixed
Get-Command -Module PowerForensics
#>
break;

# Check for a default prefix
(Get-Module Pscx -ListAvailable).Prefix

# Get the default command names
Get-Command -Module Pscx

# Add a prefix on import
Import-Module -Name Pscx -RequiredVersion 3.2.1.0 -Prefix PSCX -Passthru

# See the effect
Get-Command -Module Pscx
Get-Command Expand-PSCXArchive
Get-Help Expand-PSCXArchive

# Run the command
Expand-PSCXArchive -Path c:\ps-test\TestZip\*zip -Force -Passthru
Remove-Item c:\ps-test\TestZip\*x

# Replace a DefaultCommandPrefix
(Get-Module HardwareManagement -ListAvailable).Prefix

# Exported commands have prefix
Get-Command -Module HardwareManagement

# To see the actual functions, look at the manifest
Invoke-Expression (Get-Content -Raw (Get-Module HardwareManagement).Path)

# See the replaced prefix (restart the session)
Import-Module HardwareManagement -Prefix HdMgmt
