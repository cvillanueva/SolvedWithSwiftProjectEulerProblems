import UIKit

print("Even Fibonacci Numbers")

func findEvenFib(below: Int) {
    var fibList = [0,1,1]
    var evenSum = 0
    var newFib = 0
    var n = 3
    while newFib < below {
        newFib = fibList[n-1] + fibList[n-2]

        if newFib < below {
            if newFib%2 == 0 {
                evenSum += newFib
            }

            print("n:\(n) fib:\(newFib) evenSum:\(evenSum)")
            fibList.append(newFib)
        }

        n += 1
    }
}

findEvenFib(below: 4000000)

// Time complexity: O()
