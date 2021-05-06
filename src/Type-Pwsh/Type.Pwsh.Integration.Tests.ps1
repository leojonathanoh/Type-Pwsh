$PROJECT_DIR = Convert-Path "$PSScriptRoot/../../"

Describe 'Type-Pwsh' -Tag 'Integration' {

    Context 'Cmdlets' {

        It 'Imports cmdlets' {
            Get-Command explain | Should -Not -Be $null
            Get-Command tell | Should -Not -Be $null
            Get-Command what | Should -Not -Be $null
        }

        It 'Should work' {
            what is 240,159,144,145 | Should -Not -Be $null
            tell me | Should -Not -Be $null
            tell me something | Should -Not -Be $null
            tell me what is 240,159,144,145 | Should -Not -Be $null
            tell me what could be 240,159,144,145 | Should -Not -Be $null
            tell me what could 240,159,144,145 be | Should -Not -Be $null
            tell me what 240,159,144,145 is | Should -Not -Be $null
            tell me what 240,159,144,145 could be | Should -Not -Be $null
        }
    }

}
