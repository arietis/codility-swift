public func solution(inout A : [Int], inout _ B : [Int]) -> [Int] {
    // write your code in Swift 2.2 (Linux)
    let n = A.count

    var fibs = Array(count: n + 2, repeatedValue: 0)
    fibs[1] = 1
    fibs[2] = 2

    if n > 2 {
        for i in 3...n {
            fibs[i] = (fibs[i - 1] + fibs[i - 2]) % (1 << 30)
        }
    }

    var result = Array(count: A.count, repeatedValue: 0)

    for i in 0..<n {
        result[i] = fibs[A[i]] % (1 << B[i])
    }

    return result
}
