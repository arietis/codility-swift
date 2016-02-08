public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    var a: [Int:Bool] = [:]
    
    for i in A {
        a[i] = true
    }
    
    var i = 1
    
    while true {
        if a[i] == nil {
            return i
        }
        
        i += 1
    }
}
