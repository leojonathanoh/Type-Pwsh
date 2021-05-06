$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "tell" -Tag 'unit' {

    Context 'subject' {

        It 'Given nothing, replies with "what?"' {
            $subject = 'me'
            $reply = 'what?'
            tell $subject | Should -Be $reply
        }

        It 'Given object "something", replies with "what?"' {
            $subject = 'me'
            $object = 'something'
            $reply = 'what?'
            tell $subject $object | Should -Be $reply
        }

        It 'Given something, does that thing' {
            $subject = 'me'
            $something = '1'
            $thing = '1'
            tell $subject $something | Should -Be $thing
        }

        It 'Given something(s), does those things' {
            $subject = 'me'
            $something1 = 'echo'
            $something2 = '2'
            tell $subject $something1 $something2 | Should -Be $something2
        }

    }

}
