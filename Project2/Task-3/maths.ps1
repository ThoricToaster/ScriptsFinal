#set operation to 1 to start loop
$operation = "1"
#loops until input equals !
while ($operation -ne "!") {
    $operation = Read-Host "choose operation + - * / or press ! to exit"
    if ($operation -eq "!") {
        break
    }
    #get the users 2 numbers
    $number1 = [int](Read-Host "first number")
    $number2 = [int](Read-Host "second number")
    if ($operation -eq "+") {
        echo ($number1 + $number2)
    } elseif ($operation -eq "-") {
        echo ($number1 - $number2)
    } elseif ($operation -eq "*") {
        echo ($number1 * $number2)
    } elseif ($operation -eq "/") {
        echo ($number1 / $number2)
    } else {
        echo "invalid input"
    }
}
