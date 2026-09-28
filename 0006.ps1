<#>
The sum of the squares of the first ten natural numbers is 385,

The square of the sum of the first ten natural numbers is 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 
2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#>

$max = 100

$sq = 0
1..$max | % { $sq += $_ * $_}

$ss = 0
1..$max | % { $ss += $_ }
$ss = $ss * $ss 
$ss

$diff = $ss - $sq
Write-Output "The difference between the sum of the squares and the square of the sum for the first $max natural numbers is: $diff" 