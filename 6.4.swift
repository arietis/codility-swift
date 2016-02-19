public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    let N = A.count

    if N < 2 {
        return 0
    }

    var discStart: [Int] = Array(count: N, repeatedValue: 0)

    var discEnd: [Int] = Array(count: N, repeatedValue: 0)

    for i in 0..<N {
        discStart[max(0, i - A[i])] += 1
    
        if i + A[i] < 0 {
            discEnd[N - 1] += 1
        } else {
            discEnd[min(N - 1, i + A[i])] += 1
        }
    }

    var n = 0

    var result = 0

    for i in 0..<N {
        if discStart[i] > 0 {
            result += n * discStart[i]
            result += discStart[i] * (discStart[i] - 1) / 2
        
            if result > 10000000 {
                return -1
            }
        
            n += discStart[i]
        }
    
        if discEnd[i] > 0 {
            n -= discEnd[i]
        }
    }

    return result
}
