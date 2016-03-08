public func solution(inout A : [Int], inout _ B : [Int]) -> Int {
    // write your code in Swift 2.2
    var count = 0

    func gcd(a: Int, b: Int) -> Int {
        if a % b == 0 {
            return b
        } else {
            return gcd(b, b: a % b)
        }
    }

    func hasSamePrimeDivisors(var a: Int, var b: Int) -> Bool {
        let gcdValue = gcd(a, b: b)
    
        while a != 1 {
            let aGcd = gcd(a, b: gcdValue)
        
            if aGcd == 1 {
                break
            }
        
            a /= aGcd
        }
    
        if a != 1 {
            return false
        }
    
        while b != 1 {
            let bGcd = gcd(b, b: gcdValue)
        
            if bGcd == 1 {
                break
            }
        
            b /= bGcd
        }
    
        return b == 1
    }

    for i in 0..<A.count {
        if hasSamePrimeDivisors(A[i], b: B[i]) {
            count += 1
        }
    }

    return count
}
