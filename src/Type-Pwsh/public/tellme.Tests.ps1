$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "tellme" -Tag 'unit' {

    It 'Given something, does that thing' {
        $something = '1'
        $thing = '1'

        tellme $something | Should -Be $thing
    }

    It 'Given something(s), does those things' {
        $something1 = 'echo'
        $something2 = '2'

        tellme $something1 $something2 | Should -Be $something2
    }

}
