# Specify a module
$zipPath = 'C:\ps-test\TestZip'
Remove-Item -Path $zipPath\*xlsx


# Fully-qualified command
Import-Module PSCX -RequiredVersion 3.2.1.0 -PassThru
$ea = Get-Command Expand-Archive -FullyQualifiedModule @{
	ModuleName = 'PSCX';
	RequiredVersion = '3.2.1.0';
	GUID = '0fab0d39-2f29-4e79-ab9a-fd750c66e6c5'
}
#Run the command 
& $ea -Path $zipPath\*zip -OutputPath $zipPath -Force -Passthru
