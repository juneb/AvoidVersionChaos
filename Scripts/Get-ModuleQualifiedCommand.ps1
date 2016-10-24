
#Prep
break;
$zipPath = 'C:\ps-test\TestZip'
Remove-Item -Path $zipPath\*xlsx

# Get all instances of the command
Get-Command -Name Expand-Archive*

# Get the instance that runs
Get-Command -Name Expand-Archive

# See the modules
Get-Module -List PSCX, Microsoft.PowerShell.Archive

# Get the preferred instance
Get-Command -Name Microsoft.PowerShell.Archive\Expand-Archive
Get-Command -Name PSCX\Expand-Archive


# Run a module-qualified command
$zipPath = 'C:\ps-test\TestZip'
Remove-Item -Path $zipPath\*xlsx
PSCX\Expand-Archive -Path $zipPath\*zip -OutputPath $zipPath -Passthru


# Using Module-Qualified command
# Import-Module Microsoft.PowerShell.Archive -PassThru
Get-Command Microsoft.PowerShell.Archive\Expand-Archive
Get-Help Microsoft.PowerShell.Archive\Expand-Archive
Get-Help PSCX\Expand-Archive

Remove-Item -Path $zipPath\*xlsx
$zipPath = 'C:\ps-test\TestZip'
Microsoft.PowerShell.Archive\Expand-Archive -Path $zipPath\*zip -DestinationPath $zipPath
dir $zipPath


