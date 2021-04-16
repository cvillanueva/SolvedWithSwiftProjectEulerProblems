import UIKit

/*
    Problem statement
    =================
    The sum of the squares of the first ten natural numbers is,
    1^2 + 2^2 ... 10^2 = 385

    The square of the sum of the first ten natural numbers is,
    ( 1 + 2 + ... 10)^2 = 55^2 = 3025

    Hence the difference between the sum of the squares of the first
    ten natural numbers and the square of the sum is
    3025 - 385 = 2640

    Find the difference between the sum of the squares of the first
    one hundred natural numbers and the square of the sum.
*/

print("Sum square difference")

func findSumSquareDifference(until number: Int) {
    var sumOfSquare = 0
    var sum = 0

    for n in 1...number {
        let p = pow(of: n)
        print("n:\(n) pow:\(p)")
        sumOfSquare += p

        sum += n
    }
    let squareOfSum = pow(of: sum)
    print("sumOfSquare:\(sumOfSquare) squareOfSum:\(squareOfSum)")
    let sumSquareDifference = squareOfSum - sumOfSquare
    print("sumSquareDifference:\(sumSquareDifference)")
}

func pow(of number: Int) -> Int {
    return number * number
}


findSumSquareDifference(until: 100)
