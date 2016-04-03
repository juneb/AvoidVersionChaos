$versionMinimum = [Version]'5.0.99999.999'

if ($PSVersionTable.PSVersion -lt $versionMinimum)
{ throw "This script requires PowerShell $versionMinimum" }

'Requires version $versionMinimum'
"Running PowerShell $($PSVersionTable.PSVersion)."