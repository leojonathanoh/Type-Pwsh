$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "explain" -Tag 'unit' {

    It 'in all cases, ends up in circular reasoning' {
        Mock Invoke-Expression {
            param(
                [string]$Command
            )
            $Command
        }
        $circular = 'explain'

        explain | Should -Be $circular

        Assert-MockCalled -CommandName Invoke-Expression -Times 1
    }
}
