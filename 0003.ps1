<#
Problem 3
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
#>

Measure-Command {
        [int[]]$factors = $null
        $num = 600851475143
        if ($num % 2 -eq 0) {
            $factors += 2
            $num /= 2
        }
        for ($i = 3; $i -le [int][math]::Sqrt($num); $i += 2) {
            if ($num % $i -eq 0) {
                $factors += $i
                $num /= $i
                $i = 1
            }
        }
        if ($num -gt 1) {$factors += $num}
    }
$factors | select -Last 1