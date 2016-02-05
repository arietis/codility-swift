public func solution(X : Int, _ Y : Int, _ D : Int) -> Int {
    // write your code in Swift 2.2
    let l = abs(Y - X)
    
    var jmp = l / D
    
    if l % D > 0 {
        jmp += 1
    }

    return jmp
}
