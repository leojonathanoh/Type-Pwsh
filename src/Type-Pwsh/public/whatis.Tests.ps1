$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "whatis" -Tag 'unit' {

    It 'Given a byte, it returns a utf8 string' {
        $this = 240,159,144,145
        $that = '🐑'

        whatis $this | Should -Be $that
    }
}
