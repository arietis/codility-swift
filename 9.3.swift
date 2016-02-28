public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    var maxEnding = 0, maxSlice = 0, maxValue = Int.min

    for i in A {
        maxEnding = max(0, maxEnding + i)
        maxSlice = max(maxSlice, maxEnding)
        maxValue = max(maxValue, i)
    }

    if maxSlice == 0 {
        maxSlice = maxValue
    }

    return maxSlice
}
