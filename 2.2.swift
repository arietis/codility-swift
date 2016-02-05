public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    var z = 0
    
    for i in A {
        z ^= i
    }

    return z
}
