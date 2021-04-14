import UIKit

/*
    Problem statement
    =======
    If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
    The sum of these multiples is 23.
    Find the sum of all the multiples of 3 or 5 below 1000.
 */

print("Finding multiples of 3 and 5 below 1000")

func findMultiples(limit: Int) -> [Int] {
    var result: [Int] = []

    for i in 1...limit-1 {
        let mod3 = i % 3
        let mod5 = i % 5
        print("i:\(i) mod3:\(mod3) mod5:\(mod5)")
        if mod3 == 0 || mod5 == 0 {
            if !result.contains(i) {
                result.append(i)
            }
        }
    }
    return result
}

print(findMultiples(limit: 1000))

// Time complexity: O(n)
