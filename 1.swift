public func solution(N : Int) -> Int {
    // write your code in Swift 2.2
    var n = N
    
    while n > 0 && n % 2 == 0 {
        n /= 2
    }
    
    var i = 0
    
    var l = 0
    
    while n > 0 {
        if n % 2 == 0 {
            i += 1
        } else {
            l = max(i, l)
            i = 0
        }
        
        n /= 2
    }

    return l
}
