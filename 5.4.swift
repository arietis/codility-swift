public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    var min = Float(Int.max)
    
    var n = -1

    for i in 0..<(A.count - 2) {
        let avg = Float(A[i] + A[i + 1]) / 2.0
    
        if avg < min {
            min = avg
            n = i
        }
    
        let tavg = Float(A[i] + A[i + 1] + A[i + 2]) / 3.0
    
        if tavg < min {
            min = tavg
            n = i
        }
    }

    let N = A.count

    let avg = Float(A[N - 2] + A[N - 1]) / 2.0

    if avg < min {
        min = avg
        n = N - 2
    }

    return n
}
