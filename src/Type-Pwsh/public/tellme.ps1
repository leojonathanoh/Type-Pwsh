function tellme { invoke-expression "$( $args | % { $_ -join ',' } )" }
