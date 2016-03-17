public func solution(inout A : [Int], inout _ B : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    var maxNonOverlapping = 0

    let n = A.count

    var end = -1

    for i in 0..<n {
        if A[i] > end {
            maxNonOverlapping += 1
            end = B[i]
        }
    }

    return maxNonOverlapping
}
