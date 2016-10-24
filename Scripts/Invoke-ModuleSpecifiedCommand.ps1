###########################################
#  
#  Fully qualified command
#  
###########################################


# Specify a module
$zipPath = 'C:\ps-test\TestZip'
Remove-Item -Path $zipPath\*xlsx


Get-Module -List PSCX, Microsoft.PowerShell.Archive


# Fully-qualified command
if (Import-Module PSCX -RequiredVersion 3.1.0.0 -PassThru)
{
	$ea = Get-Command Expand-Archive -FullyQualifiedModule @{
		ModuleName = 'PSCX';
		RequiredVersion = '3.1.0.0';
		GUID = '0fab0d39-2f29-4e79-ab9a-fd750c66e6c5'
	}
	
	$ea
}

#Run the command 
& $ea -Path $zipPath\*zip -OutputPath $zipPath -Force -PassThru
Get-ChildItem $zipPath
