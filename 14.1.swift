public func solution(K : Int, _ M : Int, inout _ A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    func countBlocks(largeSum: Int, a: [Int]) -> Int {
        var tmp = 0
    
        var blocks = 1
    
        for value in A {
        
            if tmp + value <= largeSum {
                tmp += value
            } else {
                tmp = value
                blocks += 1
            }
        }
    
        return blocks
    }

    var mi = A.maxElement()!

    var ma = A.reduce(0, combine: +)

    var result = 0

    while mi <= ma {
        let mid = (mi + ma) / 2
    
        if countBlocks(mid, a: A) <= K {
            ma = mid - 1
            result = mid
        } else {
            mi = mid + 1
        }
    }

    return result
}
