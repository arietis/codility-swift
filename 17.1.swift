public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    var currentSquareMaxSum = Array(count: A.count, repeatedValue: Int.min)
    currentSquareMaxSum[0] = A[0]

    for i in 1..<A.count {
        let lastSquares = min(i, 6)
    
        for var j = lastSquares; j > 0; j -= 1 {
            if currentSquareMaxSum[i] == Int.min {
                currentSquareMaxSum[i] = currentSquareMaxSum[i - j]
            } else {
                currentSquareMaxSum[i] = max(currentSquareMaxSum[i], currentSquareMaxSum[i - j])
            }
        }
    
        currentSquareMaxSum[i] += A[i]
    }

    return currentSquareMaxSum[A.count - 1]
}
