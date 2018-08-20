<#
Problem 4
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
#>

Measure-Command {
    $max = 0
    for ($i = 100; $i -lt 1000; $i++) {
        for ($j = 100; $j -lt 1000; $j++) {
            $product = $i * $j
            $string = [string]$product
            $revString = $string | % { -join $_[$_.Length..0] }
            if ($string -eq $revString -and $product -gt $max) {$max = $product}
        }
    }
}
$max
