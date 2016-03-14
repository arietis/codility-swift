public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    let n = A.count
    
    if n < 3 {
        return 0
    }

    var count = 0

    A.sortInPlace()

    for i in 0..<n - 2 {
        var k = 0
        
        for j in i + 1..<n - 1 {
            while k < n && A[i] + A[j] > A[k] {
                k += 1
            }
        
            count += k - j - 1
        }
    }

    return count

}
