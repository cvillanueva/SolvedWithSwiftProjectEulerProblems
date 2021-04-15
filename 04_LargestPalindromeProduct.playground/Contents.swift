import UIKit

/*
    Problem statement
    =================
    A palindromic number reads the same both ways.
    The largest palindrome made from the product of
    two 2-digit numbers is 9009 = 91 × 99.

    Find the largest palindrome made from the product of two 3-digit numbers.
*/

print("Largest palindrome product")

func isPalindrome(number: Int) -> Bool {
    let numberStr = String(number)
    let numberStrReversed = String(numberStr.reversed())
    return numberStr == numberStrReversed
}

func findLargestPalindromeProduct(below number: Int) -> Int {
    for i in stride(from: number, to: 1, by: -1) {
        for j in stride(from: number, to: 1, by: -1) {
            let product = i * j
            if isPalindrome(number: product) {
                return product
            }
        }
    }
    return -1
}

//print(isPalindrome(number: 51515))
print(findLargestPalindromeProduct(below: 999))

// Time complexity: O(n^2)
