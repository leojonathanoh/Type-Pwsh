$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "what" -Tag 'unit' {

    # Include some private functions
    Get-ChildItem $PSScriptRoot/../private -Recurse -Include *.ps1 -Exclude *.Tests.ps1 | % { . $_.FullName }

    Context 'intransitive verbs' {
        It 'Given some seemingly random numbers, returns a string' {
            $intransitiveVerbs = 'be', 'is', 'are', 'was', 'were'
            $this = 97,110,105,109,97,108
            $that = 'animal'
            foreach ($verb in $intransitiveVerbs) {
                what $verb $this | Should -Be $that
                what $this $verb | Should -Be $that
            }
        }
    }

    Context 'auxillary verbs' {
        It 'Given some seemingly random numbers, returns a string' {
            $auxillaryVerbs = 'can', 'could', 'may', 'might', 'shall', 'should', 'will', 'would'
            $intransitiveVerbs = 'be', 'is', 'are', 'was', 'were'
            $this = 97,110,105,109,97,108
            $that = 'animal'
            foreach ($auxillaryVerb in $auxillaryVerbs) {
                foreach ($intransitiveVerb in $intransitiveVerbs) {
                    what $auxillaryVerb $intransitiveVerb $this | Should -Be $that
                    what $auxillaryVerb $this $intransitiveVerb | Should -Be $that
                    what $this $auxillaryVerb $intransitiveVerb | Should -Be $that
                }
            }
        }
    }
}
