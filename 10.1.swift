public func solution(N : Int) -> Int {
    // write your code in Swift 2.2
    var i = 1

    var result = 0

    while i * i < N {
        if N % i == 0 {
            result += 2
        }
    
        i += 1
    }

    if (i * i == N) {
        result += 1
    }

    return result
}
