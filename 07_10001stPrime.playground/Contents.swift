import UIKit

/*
    Problem statement
    =================
    By listing the first six prime numbers:

    2, 3, 5, 7, 11, and 13,

    we can see that the 6th prime is 13.

    What is the 10001st prime number?
*/

print("10001st prime")

func isPrime(number: Int) -> Bool {
    if number > 2 {
        for n in 2...number-1 {
            if number%n == 0 {
                return false
            }
        }
    }
    return true
}

func findUmpteenthPrime(umpteenth: Int) {
    var count = 2
    var foundPrimes = 0
    while true {
        if isPrime(number: count) {
            foundPrimes += 1
            print("count:\(count) P foundPrimes:\(foundPrimes)")
        }

        if foundPrimes == umpteenth {
            break
        }
        count += 1
    }
    print("\(umpteenth)st prime is:\(count)")
}

//findUmpteenthPrime(umpteenth: 6)
findUmpteenthPrime(umpteenth: 10001)
