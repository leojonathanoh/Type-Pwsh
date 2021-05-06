# - Initial setup: Fill in the GUID value. Generate one by running the command 'New-GUID'. Then fill in all relevant details.
# - Ensure all relevant details are updated prior to publishing each version of the module.
# - To simulate generation of the manifest based on this definition, run the included development entrypoint script Invoke-PSModulePublisher.ps1.
# - To publish the module, tag the associated commit and push the tag.
@{
    RootModule = 'Type-Pwsh.psm1'
    # ModuleVersion = ''                            # Value will be set for each publication based on the tag ref. Defaults to '0.0.0' in development environments and regular CI builds
    GUID = 'dbe87ca9-5e8e-4b6b-b610-30f83233b9a8'
    Author = 'Type-Pwsh'
    CompanyName = 'The Oh Brothers'
    Copyright = '(c) 2021 The Oh Brothers'
    Description = 'Type pwsh like you would type any language 🙃.'
    PowerShellVersion = '3.0'
    # PowerShellHostName = ''
    # PowerShellHostVersion = ''
    # DotNetFrameworkVersion = ''
    # CLRVersion = ''
    # ProcessorArchitecture = ''
    # RequiredModules = @()
    # RequiredAssemblies = @()
    # ScriptsToProcess = @()
    # TypesToProcess = @()
    # FormatsToProcess = @()
    # NestedModules = @()
    FunctionsToExport = Get-ChildItem $PSScriptRoot/../../../src/Type-Pwsh/public/*.ps1 | ? { $_ -notmatch '\.Tests.ps1' } | % { $_.BaseName }
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = @()
    # DscResourcesToExport = @()
    # ModuleList = @()
    # FileList = @()
    PrivateData = @{
        # PSData = @{           # Properties within PSData will be correctly added to the manifest via Update-ModuleManifest without the PSData key. Leave the key commented out.
            Tags = @(
                'brainy'
                'catty'
                'comical'
                'conversational'
                'english'
                'flowy'
                'funny'
                'humanly'
                'humorous'
                'interactive'
                'intuitive'
                'layman'
                'philosophical'
                'powershell'
                'pwsh'
                'satirical'
                'simple'
                'suspensive'
                'watery'
            )
            LicenseUri = 'https://raw.githubusercontent.com/leojonathanoh/Type-Pwsh/master/LICENSE'
            ProjectUri = 'https://github.com/leojonathanoh/Type-Pwsh'
            # IconUri = ''
            # ReleaseNotes = ''
            # Prerelease = ''
            # RequireLicenseAcceptance = $false
            # ExternalModuleDependencies = @()
        # }
        # HelpInfoURI = ''
        # DefaultCommandPrefix = ''
    }
}
