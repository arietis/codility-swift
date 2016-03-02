public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    let n = A.count
    
    if n < 3 {
        return 0
    }
    
    var peaks: [Int] = []

    for i in 1..<n - 1 {
        if A[i - 1] < A[i] && A[i] > A[i + 1] {
            peaks.append(i)
        }
    }

    for var i = n; i > 0; i -= 1 {
        if n % i != 0 {
            continue
        }
    
        let blockSize = n / i
    
        var currentBlock = 0
    
        for j in peaks {
            if j / blockSize > currentBlock {
                break
            }
        
            if j / blockSize == currentBlock {
                currentBlock += 1
            }
        }
    
        if currentBlock == i {
            return i
        }
    }

    return 0
}
