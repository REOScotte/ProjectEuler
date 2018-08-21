<#
Problem 5
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#>

Measure-Command {
    $max = 0
    for ($i = 19399380; $max -eq 0; $i += 20) {
        "I: $i"
        for ($j = 11; $j -le 20; $j++) {
            "J: $j"
            if ($i % $j -ne 0) {
                $max = 0
                break
            } else {
                $max = $i
            }
        }
    }
}
$max
