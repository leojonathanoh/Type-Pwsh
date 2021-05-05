$PROJECT_DIR = Convert-Path "$PSScriptRoot/../../"

Describe 'Type-Pwsh' -Tag 'Integration' {

    Context 'Cmdlets' {

        It 'Imports cmdlets' {
            Get-Command explain | Should -Not -Be $null
            Get-Command tellme | Should -Not -Be $null
            Get-Command whatis | Should -Not -Be $null
        }

    }

}
