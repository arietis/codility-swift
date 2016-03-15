public func solution(M : Int, inout _ A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    let n = A.count

    var counters = Array(count: M + 1, repeatedValue: 0)

    var head = 0

    var tail = 0

    var result = 0

    while tail < n {
        while head < n && counters[A[head]] != 2 {
            counters[A[head]] += 1
        
            if counters[A[head]] == 2 {
                break
            }
        
            head += 1
        }
    
        result += head - tail
    
        if result > 1000000000 {
            return 1000000000
        }
    
        counters[A[tail]] = 0
        tail += 1
    }

    return result
}
