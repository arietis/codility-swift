public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    let n = A.count

    var peaks: [Int] = []

    if n < 3 {
        return 0
    }

    for i in 1...n-2 {
        if A[i - 1] < A[i] && A[i] > A[i + 1] {
            peaks.append(i)
        }
    }

    if peaks.count == 0 {
        return 0
    }

    var maxPlaced = 0

    for var i = n; i > 0; i -= 1 {
        if (i - 1) * i + 2 > n {
            continue
        }
    
        var prevPeak = peaks.first
    
        var placed = 1
    
        for j in 1..<peaks.count {
            if peaks[j] - prevPeak! < i {
                continue
            }
        
            placed += 1
            prevPeak = peaks[j]
        
            if placed >= i {
                break
            }
        }
    
        maxPlaced = max(maxPlaced, placed)
    }

    return maxPlaced
}
