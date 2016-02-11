public func solution(A : Int, _ B : Int, _ K : Int) -> Int {
    // write your code in Swift 2.2
    if A == 0 {
        return (B - (B % K)) / K + 1
    } else {
        return (B - (B % K)) / K - (A - 1) / K
    }
}
