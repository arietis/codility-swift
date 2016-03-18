public func solution(K : Int, inout _ A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    var result = 0

    var length = 0

    for i in A {
        length += i
    
        if length >= K {
            result += 1
            length = 0
        }
    }

    return result
}
