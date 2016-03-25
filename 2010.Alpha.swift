public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    var firstCoveringPrefix = 0

    if A.count > 0 {
        var occurences = Array(count: A.count, repeatedValue: false)

        for i in 0..<A.count {
            if !occurences[A[i]] {
                occurences[A[i]] = true
                firstCoveringPrefix = i
            }
        }
    }

    return firstCoveringPrefix
}
