# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.


<#
    .SYNOPSIS
        Provides the list of artifacts (Packages and Assemblies) generated by this repository.
    
    .PARAMETER ValidateAssemblies
        Specifies if it should validate that the expected Assemblies exist.

    .PARAMETER ValidatePackages
        Specifies if it should validate that the expected packages exist.
#>

param(
    [bool] $ValidateAssemblies = $True,
    [bool] $ValidatePackages = $True
);

& "$PSScriptRoot/set-env.ps1"

$artifacts = @{
    Packages = @(
        "Microsoft.Quantum.Compiler"
        "Microsoft.Quantum.ProjectTemplates"
        "Microsoft.Quantum.Sdk"
        "qsc"
    );
    Assemblies = @(
        ".\src\QuantumSdk\Tools\BuildConfiguration\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.Sdk.BuildConfiguration.dll",

        ".\src\QsCompiler\CommandLineTool\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.QsCompiler.dll",
        ".\src\QsCompiler\CommandLineTool\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.QsDocumentationParser.dll ",
        ".\src\QsCompiler\CommandLineTool\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\qsc.dll",

        ".\src\QsCompiler\LanguageServer\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.QsCompilationManager.dll",
        ".\src\QsCompiler\LanguageServer\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.QsCore.dll",
        ".\src\QsCompiler\LanguageServer\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.QsDataStructures.dll",
        ".\src\QsCompiler\LanguageServer\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.QsLanguageServer.dll",
        ".\src\QsCompiler\LanguageServer\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.QsSyntaxProcessor.dll",
        ".\src\QsCompiler\LanguageServer\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.QsTextProcessor.dll",
        ".\src\QsCompiler\LanguageServer\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.QsTransformations.dll",

        ".\src\VisualStudioExtension\QsharpVSIX\bin\$Env:BUILD_CONFIGURATION\Microsoft.Quantum.VisualStudio.Extension.dll"
    ) 
} 

if ($ValidatePackages -eq $True) {
    $artifacts.Packages = $artifacts.Packages | ForEach-Object { Get-Item (Join-Path $env:NUGET_OUTDIR "$_.$Env:NUGET_VERSION.nupkg") };
}

if ($ValidateAssemblies -eq $True) {
    $artifacts.Assemblies = $artifacts.Assemblies | ForEach-Object { Get-Item (Join-Path $PSScriptRoot (Join-Path ".." $_)) };
}

$artifacts | Write-Output;