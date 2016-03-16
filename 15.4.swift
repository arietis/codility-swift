public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    let n = A.count

    var back = 0

    var front = n - 1

    func absSum(a: Int, b: Int) -> Int {
        return abs(a + b)
    }

    var mi = absSum(A[back], b: A[front])
    A.sortInPlace()

    func minAbsSum(a: Int, b: Int, min: Int) -> Int {
        return absSum(a, b: b) < min ? absSum(a, b: b) : min
    }

    while back != front && mi > 0 {
        mi = minAbsSum(A[back], b: A[front], min: mi)
    
        if absSum(A[back + 1], b: A[front]) < absSum(A[back], b: A[front - 1]) {
            back += 1
        } else {
            front -= 1
        }
    }

    return minAbsSum(A[back], b: A[front], min: mi)
}
