public func solution(X : Int, inout _ A : [Int]) -> Int {
    // write your code in Swift 2.2
    var a: [Int:Bool] = [:]
    
    for i in A {
        if i <= X {
            a[i] = true
        }
        
        if a.count == X {
            return A.indexOf(i)!
        }
    }
    
    return -1
}
