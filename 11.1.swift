public func solution(N : Int, inout _ P : [Int], inout _ Q : [Int]) -> [Int] {
    // write your code in Swift 2.2
    var sieve = Array(count: N + 1, repeatedValue: true)
    sieve[0] = false
    sieve[1] = false

    for var i = 2; i * i <= N; i += 1 {
        if sieve[i] {
            var k = i * i
        
            while k <= N {
                sieve[k] = false
                k += i
            }
        }
    }

    var primes: [Int] = []

    for i in 0..<sieve.count {
        if sieve[i] {
            primes.append(i)
        }
    }

    var semiPrimesCount = Array(count: N + 1, repeatedValue: 0)

    for i in primes {
        for j in primes {
            if i * j > N {
                break
            }
        
            semiPrimesCount[i * j] = 1
        }
    }

    for i in 1...N {
        semiPrimesCount[i] += semiPrimesCount[i - 1]
    }

    var count: [Int] = []

    for i in 0..<P.count {
        count.append(semiPrimesCount[Q[i]] - semiPrimesCount[P[i] - 1])
    }

    return count
}
