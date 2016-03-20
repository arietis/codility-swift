public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    let n = A.count
    
    if n == 0 {
        return 0
    }
    
    for i in 0..<n {
        A[i] = abs(A[i])
    }

    let m = A.maxElement()!

    let sum = A.reduce(0, combine: +)

    var occurenceCount = Array(count: m + 1, repeatedValue: 0)

    for i in 0..<n {
        occurenceCount[A[i]] += 1
    }

    var dp = Array(count: sum, repeatedValue: Int.min)
    dp[0] = 0

    for i in 1...m {
        if occurenceCount[i] > 0 {
            for j in 0..<sum {
                if dp[j] >= 0 {
                    dp[j] = occurenceCount[i]
                } else if j >= i && dp[j - i] > 0 {
                    dp[j] = dp[j - i] - 1
                }
            }
        }
    }

    var result = sum

    for i in 0..<(sum / 2) + 1 {
        if dp[i] >= 0 {
            result = min(result, sum - 2 * i)
        }
    }

    return result
}
