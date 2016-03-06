public func solution(inout A : [Int]) -> [Int] {
    // write your code in Swift 2.2
    let n = A.count

    var counters = Array(count: 2 * n + 1, repeatedValue: 0)

    var divisors = Array(count: 2 * n + 1, repeatedValue: 0)

    var nonDivisors = Array(count: n, repeatedValue: 0)

    for i in A {
        counters[i] += 1
    }

    for i in 1...2 * n {
        if counters[i] > 0 {
            var k = i
        
            while k <= 2 * n {
                if counters[k] > 0 {
                    divisors[k] += counters[i]
                }
            
                k += i
            }
        }
    }

    for i in 0..<n {
        nonDivisors[i] = n - divisors[A[i]]
    }

    return nonDivisors
}
