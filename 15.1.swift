public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    var s: Set<Int> = Set<Int>()

    for i in A {
        s.insert(abs(i))
    }

    return s.count
}
