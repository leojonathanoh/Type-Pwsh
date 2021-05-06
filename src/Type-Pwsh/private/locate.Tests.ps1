$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "locate" -Tag 'unit' {

    It 'locates any item in another set of items' {
        $any = '1'
        $in = '1', '2'
        locate -any $any -in $in | Should -Be 0
    }

    It 'locates any items in another set of items' {
        $any = '1', '2'
        $in = '1', '2'
        locate -any $any -in $in | Should -Be 0,1
    }

}
