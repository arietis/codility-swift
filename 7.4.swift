public func solution(inout H : [Int]) -> Int {
    // write your code in Swift 2.2
    let N = H.count

    var stones = 0

    var stack = Array(count: N, repeatedValue: 0)

    var stackNum = 0

    for i in 0..<N {
        while stackNum > 0 && stack[stackNum - 1] > H[i] {
            stackNum -= 1
        }
    
        if stackNum <= 0 || stack[stackNum - 1] != H[i] {
            stones += 1
            stack[stackNum] = H[i]
            stackNum += 1
        }
    }

    return stones
}
