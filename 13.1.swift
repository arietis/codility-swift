public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    let n = A.count

    if n <= 2 {
        return 1
    }

    var reached = Array(count: n, repeatedValue: 0)
    reached[0] = A[0]
    reached[1] = A[1]

    var fibN = Array(count: 26, repeatedValue: 0)
    fibN[1] = 1

    var i = 2

    while i < 26 {
        fibN[i] = fibN[i - 1] + fibN[i - 2]
    
        if fibN[i] - 1 == n {
            return 1
        }
    
        if fibN[i] - 1 < n && A[fibN[i] - 1] == 1 {
            reached[fibN[i] - 1] = 1
        }
    
        i += 1
    }

    var mi = Int.max

    for i in 0..<n {
        if reached[i] == 0 {
            continue
        }
    
        let minJumpsToHere = reached[i]
    
        for j in 2..<26 {
            let nextPos = i + fibN[j]
        
            if nextPos == n {
                mi = min(mi, minJumpsToHere + 1)
                break
            }
        
            if nextPos > n || A[nextPos] == 0 {
                continue
            }
        
            if reached[nextPos] == 0 || reached[nextPos] > minJumpsToHere + 1 {
                reached[nextPos] = minJumpsToHere + 1
            }
        }
    }

    return mi == Int.max ? -1 : mi
}
