public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    A[0] = 0
    A[A.count - 1] = 0
    
    var maxEnding = 0

    var maxSlice = 0

    var maxSliceLeft = Array(count: A.count, repeatedValue: 0)

    for i in 0..<A.count {
        maxEnding = max(0, maxEnding + A[i])
        maxSliceLeft[i] = maxEnding
    }

    var maxSliceRight = Array(count: A.count, repeatedValue: 0)
    maxEnding = 0
    maxSlice = 0

    for var i = A.count - 2; i >= 1; i-- {
        maxEnding = max(0, maxEnding + A[i])
        maxSliceRight[i] = maxEnding
    }

    var maxDoubleSlice = 0

    for i in 1..<(A.count - 1) {
        maxDoubleSlice = max(maxDoubleSlice, maxSliceLeft[i - 1] + maxSliceRight[i + 1])
    }

    return maxDoubleSlice
}
