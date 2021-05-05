$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "tellme" -Tag 'unit' {

    It 'Given something, does that thing' {
        $something = 'Write-Output "hello world"'
        $thing = 'hello world'

        tellme $something | Should -Be $thing
    }

    It 'Given something(s), does those things' {
        $something1 = 'Write-Output'
        $something2 = 'hello  world'
        $things = 'hello', 'world'

        tellme $something1 $something2 | Should -Be $things
    }

}
