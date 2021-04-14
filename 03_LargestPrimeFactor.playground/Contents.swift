import UIKit

print("Largest Prime Factor")

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

func getLargestPrimeFactor(of number: Int) -> [Int] {
    let start = Date().timeIntervalSince1970
    var result: [Int] = []
    let squareRoot = Int(sqrt(Double(number)))
    print("squareRoot:\(squareRoot)")
    for n in stride(from: squareRoot, to: 1, by: -1) {
        let mod = number%n
        let div = number/n
        if mod == 0 {
            if isPrime(number: n) {
                result.append(n)
                print("n:\(n) mod:\(mod) div:\(div) F P")
                break // Comentar aqui para ver todos los factores y no solo el mayor
            }
        }
    }
    let time = Date().timeIntervalSince1970 - start
    print("time:\(time)")
    return result
}
print(getLargestPrimeFactor(of: 600851475143))
//print(getLargestPrimeFactor(of: 13195))
//print(getLargestPrimeFactor(of: 18))
