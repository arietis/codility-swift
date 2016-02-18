public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    A.sortInPlace()

    var mx = 0

    let n = A.count

    if n == 3 {
        mx = A[0] * A[1] * A[2]
    } else if A[1] >= 0 {
        mx = A[n - 1] * A[n - 2] * A[n - 3]
    } else {
        mx = A[n - 1] * A[n - 2] * A[n - 3]
        mx = max(mx, A[0] * A[1] * A[n - 1])
    }

    return mx
}
