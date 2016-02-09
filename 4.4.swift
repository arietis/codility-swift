public func solution(N : Int, inout _ A : [Int]) -> [Int] {
    // write your code in Swift 2.2
    var a = [Int](count: N, repeatedValue: 0)

    var maximum = 0

    var lastMax = 0

    for i in A {
        if i >= 1 && i <= N {
            var c = a[i - 1]
        
            if c < lastMax {
                c = lastMax
            }
        
            a[i - 1] = c + 1
        
            if c + 1 > maximum {
                maximum = c + 1
            }
        } else if i == N + 1 {
            lastMax = maximum
        }
    }

    return a.map { (i) -> Int in
        if i < lastMax {
            return lastMax
        } else {
            return i
        }
    }
}
