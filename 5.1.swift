public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    var count = 0
    
    var p = 0

    for i in A {
        if i == 0 {
            p += 1
        } else {
            count += p
        }
        
        if count > 1000000000 {
            return -1
        }
    }

    return count
}
