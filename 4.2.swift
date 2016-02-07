public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    var s = Set<Int>()
    
    for i in A {
        if i > A.count {
            return 0
        } else {
            s.insert(i)
        }
    }
    
    if s.count == A.count {
        return 1
    } else {
        return 0
    }
}
