# SemanticVersion First
$MinimumVersion = '5.1.14393.999'
if ($MinimumVersion -gt $PSVersionTable.PSVersion)
{
	throw "This script requires PowerShell $MinimumVersion. Running PowerShell $($PSVersionTable.PSVersion)"
}

<#

#Requires -Version 6.0.0-alpha 
"Requires version '6.0.0-alpha'"
"Running version $($PSVersionTable.PSVersion)"

#Requires -Version 6.0.1 
"Requires version '6.0.1'"
"Running version $($PSVersionTable.PSVersion)"

# Testing Semantic Version (fails on 5.0)
$minimumVersion = [System.Management.Automation.SemanticVersion]::New(6, 0, 1, 'alpha')

if ($minimumVersion -gt $PSVersionTable.PSVersion)
{
	throw "This script requires PowerShell $minimumVersion. Running PowerShell $($PSVersionTable.PSVersion)"
}
"Requires version '6.0.1-alpha'"
"Running version $($PSVersionTable.PSVersion)"


# Testing Semantic Version
$strMinimum = '6.0.1-alpha'

if ($strMinimum -gt $PSVersionTable.PSVersion)
{
	throw "This script requires PowerShell $strMinimum. Running PowerShell $($PSVersionTable.PSVersion)"
}
"Requires version '6.0.1-alpha'"
"Running version $($PSVersionTable.PSVersion)"

###

# SemanticVersion First
$MinimumVersion = '5.1.14393.999'
if ($PSVersionTable.PSVersion -lt $MinimumVersion)
{ throw "This script requires PowerShell $MinimumVersion. Running PowerShell $($PSVersionTable.PSVersion)" }

# Place Version First!
$MinimumVersion = '5.1.14393.999'
if ($MinimumVersion -gt $PSVersionTable.PSVersion)
{ throw "This script requires PowerShell $MinimumVersion. Running PowerShell $($PSVersionTable.PSVersion)" }

#>
