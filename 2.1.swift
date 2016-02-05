public func solution(inout A : [Int], _ K : Int) -> [Int] {
    // write your code in Swift 2.2
    if A.count == 0 {
        return A
    }
    
    for _ in 0..<K {
        A.insert(A.removeLast(), atIndex: 0)
    }
    
    return A
}
