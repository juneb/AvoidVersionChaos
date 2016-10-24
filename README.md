# Avoiding Version Chaos in a Multi-Version World

Slides and code from presentations to:

- Mississippi PowerShell User Group, January 2016
- PowerShell Saturday Tampa, March 2016
- PowerShell Conference Asia, October 2016

Beginning in PowerShell 5.0, you can install multiple versions of the same module on the same computer -- in the same directory or different directories -- and you can import all of them at the same time.

You can have multiple commands with the same name in different modules and modules with the same names.

Also, the pace of PowerShell development has exploded from every three years to frequent Windows Updates and even daily updates in open source. Open-sourced PowerShell for Windows, Mac, and Linux add the possibility of multiple parallel packages of PowerShell outside of the Microsoft brand.

What could go wrong? A lot, especially if you are writing shared code that will run on systems that you can't control and might not anticipate.

The opportunities are fantastic, so we don't want to avoid a multi-version world; we want to embrace it. We just want to avoid the chaos that might ensu

This presentation shows you how to:

- Select the version of PowerShell you need
- Import the version of the module that you want
- Run the command that you intend

##Repo Contents 

This repository contains the following slides and code:

####Getting PowerShell Versions

- [AvoidingVersionChaosPPTX.zip](https://github.com/juneb/AvoidVersionChaos/blob/master/AvoidingVersionChaosPPTX.zip): Slides from the latest version of this presentation.
- [AvoidingVersionChaos_Scripts.zip](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/AvoidingVersionChaos_Scripts.zip): A zip file of scripts in the Scripts subdirectory.
- [Test-PSVersionRequirement.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Test-PSVersionRequirement.ps1): Demonstrates that `#Requires -Version` gets a minimum version and inspects only the Major and Minor properties of Version object.
- [Test-PSVersionRequirement-Works.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Test-PSVersionRequirement-Works.ps1): Logic for testing all properties of the Version object.
- [Test-SemanticVersion.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Test-SemanticVersion.ps1): Demonstrates the new SemanticVersion object (System.Management.Automation.SemanticVersion) in PowerShell 6-alpha. Shows how to use `#Requires -Version` and version string comparisons to test all properties of the Version and SemanticVersion object.

####Getting Module Versions
- [RequireDefault.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/RequireDefault.ps1): Shows the default behavior of `#Requires -Module` and `Using module` statement.
- [Import-ModuleVersion.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Import-ModuleVersion.ps1), [Test-ModuleRequirement.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Test-ModuleRequirement.ps1), and [Test-ImportModule.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Test-ImportModule.ps1): Show the default behavior of Import-Module. 
- [Test-ModuleSpecification.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Test-ModuleSpecification.ps1): Shows how to use a ModuleSpecification object to specify the version of the module to import, including the behavior of the ModuleVersion, MaximumVersion, and RequiredVersion keys.

####Get the Required Command
- [Invoke-ModuleQualifiedCommand.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Invoke-ModuleQualifiedCommand.ps1) and [Get-ModuleQualifiedCommand.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Get-ModuleQualifiedCommand.ps1): Run a module-qualified command to specify a command in a particular module.
- [Invoke-ModuleSpecifiedCommand.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Invoke-ModuleSpecifiedCommand.ps1): Run a fully-qualified command to specify a command in a particular version of a module, including a GUID to distinguish modules with the same name.

####Related Scripts
- [Get-CommandDuplicates.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Get-CommandDuplicates.ps1): Get commands with the same name in different modules.
- [Get-CommandPrefix.ps1](): Get commands with a default prefix in the module manifest.
- [Get-CommandsWithFQNParameter.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Get-CommandsWithFQNParameter.ps1): Get commands with a FullyQualifiedName or FullyQualifiedModule parameter that takes a ModuleSpecification object.
- [Get-VersionParameter.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Get-VersionParameter.ps1): Get commands with Version parameters.
- [Get-VersionWrappedModule.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Get-VersionWrappedModule.ps1): Get modules in version subdirectories.
- [Test-GetCommand.ps1](https://github.com/juneb/AvoidVersionChaos/blob/master/Scripts/Test-GetCommand.ps1): Test Get-Command with ModuleSpecification object.


##Additional Resources:
Here is a list of blog posts and other resources on this topic.

- [Using a ModuleSpecification Object](http://info.sapien.com/scripting/scripting-modules/using-a-modulespecification-object)


- [Using Statement: Import Powershell Classes from Modules](http://info.sapien.com/scripting/scripting-classes/import-powershell-classes-from-modules)    

- [Which version does Import-Module import?](http://info.sapien.com/scripting/scripting-modules/242-which-version-does-import-module-import)

- [Update-Module Adds, Not Updates](http://info.sapien.com/scripting/scripting-modules/update-module-5-0-adds-not-updates)

- [Get Release Notes](http://info.sapien.com/scripting/scripting-modules/get-release-notes)