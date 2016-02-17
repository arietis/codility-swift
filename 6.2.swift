public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    if A.count < 3 {
        return 0
    }
    
    A.sortInPlace()
    
    for i in 0..<A.count - 2 {
        let p = A[i]
        
        let q = A[i + 1]
        
        let r = A[i + 2]
        
        if r <= 0 {
            continue    
        }
                
        if p + q > r {
            return 1    
        }
    }
    
    return 0
}
