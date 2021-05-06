function tell {
    $clause = $args
    if ($args.Length) {
        $subject = $args[0]
        if ($args.Length -eq 1) {
            # E.g. tell me
            $phrase = '"what?"'
        }elseif ($args.Length -gt 1) {
            if ($args[1] -eq 'something') {
                # E.g. tell me something
                $phrase = '"what?"'
            }else {
                # E.g. tell me <something>...
                $phrase = $args[1..($args.Length - 1)]
            }
        }
    }
    invoke-expression "$( $phrase | % { $_ -join ',' } )"
}
