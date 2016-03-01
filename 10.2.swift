public func solution(N : Int) -> Int {
    // write your code in Swift 2.2
    var i = 1

    var result = Int.max

    while i * i < N {
        if N % i == 0 {
            result = min(result, 2 * (i + N / i))
        }
    
        i += 1
    }

    if (i * i == N) {
        result = min(result, 4 * i)
    }

    return result
}
