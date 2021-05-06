function what {
    $clause = $args

    $intransitiveVerbs = 'be', 'is', 'are', 'was', 'were'
    $auxillaryVerbs = 'can', 'could', 'may', 'might', 'shall', 'should', 'will', 'would'

    # Locate the verb. Subject is right behind.
    $intransitiveVerbIndex = locate -any $clause -in $intransitiveVerbs | Select-Object -First 1
    $auxillaryVerbIndex = locate -any $clause -in $auxillaryVerbs | Select-Object -First 1

    if ($null -eq $auxillaryVerbIndex) {
        if ($intransitiveVerbIndex -eq $clause.Length - 1) {
            # E.g. <subject> is
            $subjectIndexStart = $intransitiveVerbIndex - 1
            $subjectIndexEnd = $intransitiveVerbIndex - 1
        }else {
            # E.g. is <subject>
            $subjectIndexStart = $intransitiveVerbIndex + 1
            $subjectIndexEnd = $clause.Length - 1
        }
    }else {
        $diff = $intransitiveVerbIndex - $auxillaryVerbIndex
        if ($diff -eq 1) {
            if ($intransitiveVerbIndex -eq $clause.Length - 1) {
                # E.g. <subject> can be
                $subjectIndexStart = $auxillaryVerbIndex - 1
                $subjectIndexEnd = $auxillaryVerbIndex - 1
            }else {
                # E.g. can be <subject>
                $subjectIndexStart = $intransitiveVerbIndex + 1
                $subjectIndexEnd = $intransitiveVerbIndex + 1
            }
        }else {
            # E.g. can <subject> be
            $subjectIndexStart = $auxillaryVerbIndex + 1
            $subjectIndexEnd = $intransitiveVerbIndex - 1
        }
    }
    $subject = @(
        $subjectIndexStart..$subjectIndexEnd | % { $clause[$_] }
    )
    [system.text.encoding]::utf8.getstring($subject)
}
