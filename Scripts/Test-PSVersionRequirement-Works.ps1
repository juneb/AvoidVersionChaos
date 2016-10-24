# Works on 2.0 - 5.1
# Use -gt, -lt, -eq, -ne

$versionMinimum = [Version]'5.1.99999.999'

if ($versionMinimum -gt $PSVersionTable.PSVersion)
{ throw "This script requires PowerShell $versionMinimum" }

"Requires version $versionMinimum"
"Running PowerShell $($PSVersionTable.PSVersion)."