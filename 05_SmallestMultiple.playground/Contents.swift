import UIKit

/*
    Problem statement
    =================
    2520 is the smallest number that can be divided by each of the
    numbers from 1 to 10 without any remainder.

    What is the smallest positive number that is evenly divisible by
    all of the numbers from 1 to 20?
*/

var cycles = 0

func isDivisibleBy(dividend: Int, maxDivider: Int) -> Bool {
//    for n in 1...maxDivider {
    for n in stride(from: maxDivider, to: 2, by: -1) {
        let result = dividend%n
        cycles += 1

        if result != 0 {
            return false
        }
    }
    return true
}

func findSmallestMultiple(maxDivider: Int) -> Int {
    print("Smallest multiple of \(maxDivider)")
    var numberFound = false
    var currentNumber = maxDivider

    while !numberFound {
        if isDivisibleBy(dividend: currentNumber, maxDivider: maxDivider) {
            numberFound = true
            return currentNumber
        }
        currentNumber += maxDivider
    }
}

let start = Date().timeIntervalSince1970
print(findSmallestMultiple(maxDivider: 20))
print("time:\(Date().timeIntervalSince1970-start)")
print("cycles:\(cycles)")

