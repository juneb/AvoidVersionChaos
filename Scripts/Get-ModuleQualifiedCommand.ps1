<#	
#Find all available instances of the command
Get-Command Expand-Archive*

# Get the instance that runs
Get-Command Expand-Archive

# CommandInfo contains ModuleInfo
Get-Command Expand-Archive* | Format-Table Name, Version, @{ L = 'ModuleVersion'; E = { $_.Module.Version } }
Get-Command Expand-Archive* | Format-List Name, Version, @{ L = 'ModulePath'; E = { $_.Module.ModuleBase } }
Get-Command Expand-Archive* | foreach { Remove-Module $_.Module }
#>
#Prep
break;
$zipPath = 'C:\ps-test\TestZip'
Remove-Item -Path $zipPath\*xlsx

# Get all instances of the command
Get-Command -Name Expand-Archive*

# Get the instance that runs
Get-Command -Name Expand-Archive

# Get the preferred instance
Get-Command -Name PSCX\Expand-Archive

#Import-Module -Name PSCX -RequiredVersion 3.2.1.0 -PassThru
PSCX\Expand-Archive -Path $zipPath\*zip -OutputPath $zipPath -Passthru

# Using Module-Qualified command
Get-Command PSCX\Expand-Archive
Get-Help PSCX\Expand-Archive
PSCX\Expand-Archive -Path $zipPath\*zip -OutputPath C:\ps-test\testzip -Passthru


