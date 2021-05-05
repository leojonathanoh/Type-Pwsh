$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "whatis" -Tag 'unit' {

    It 'Given a byte, it returns a utf8 string' {
        $this = 97,110,105,109,97,108
        $that = 'animal'

        whatis $this | Should -Be $that
    }
}
