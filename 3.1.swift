public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    let sum = A.reduce(0, combine: +)
	
    var min = Int.max
	
    var p = 0
	
    var lsum = 0
	
    var rsum = sum
	
    repeat {
        lsum += A[p]
        rsum -= A[p]
		
        let diff = abs(lsum - rsum)
		
        if diff < min {
            min = diff
        }
		
        p += 1
    } while p + 1 < A.count

    return min
}
