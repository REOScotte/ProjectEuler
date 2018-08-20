<#
Problem 3
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
#>

Measure-Command {
    [int[]]$factors = $null
    $num = 600851475143
    while ($num % 2 -eq 0) {
        $factors += 2
        $num /= 2
    }
    $stop = [int][math]::Sqrt($num)
    for ($i = 3; $i -le $stop; $i += 2) {
        if ($num % $i -eq 0) {
            $factors += $i
            $num /= $i
            $stop = [int][math]::Sqrt($num)
            $i = 3
        }
    }
    $factors += $num
}
$factors | sort | select -Last 1