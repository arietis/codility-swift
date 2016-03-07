public func solution(N : Int, _ M : Int) -> Int {
    // write your code in Swift 2.2
    func gcd(a: Int, b: Int) -> Int {
        if a % b == 0 {
            return b
        } else {
            return gcd(b, b: a % b)
        }
    }   

    return N / gcd(N, b: M)
}
