function locate {
    param(
        [array]$any
    ,
        [array]$in
    )

    # Return the index
    0..($any.Length - 1) | ? { $any[$_] -in $in }
}
