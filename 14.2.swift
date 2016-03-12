public func solution(inout A : [Int], inout _ B : [Int], inout _ C : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    func buildCumulativeNails(nailed: [Bool]) -> [Int] {
        var cumulativeNails = Array(count: nailed.count, repeatedValue: 0)
    
        var nails = 0
    
        for i in 0..<cumulativeNails.count {
            if nailed[i] {
                nails += 1
            }
        
            cumulativeNails[i] = nails
        }
    
        return cumulativeNails
    }

    func buildNailed(c: [Int], cIndexLimit: Int) -> [Bool] {
        var nailed = Array(count: 2 * C.count + 1, repeatedValue: false)
    
        for i in 0..<cIndexLimit {
            nailed[c[i]] = true
        }
    
        return nailed
    }

    func hasAnyNailBetween(cumulativeNails: [Int], begin: Int, end: Int) -> Bool {
        return (cumulativeNails[end] - (begin == 0 ? 0 : cumulativeNails[begin - 1])) > 0
    }

    func coverAll(a: [Int], b: [Int], c: [Int], cIndexLimit: Int) -> Bool {
        let cumulativeNails = buildCumulativeNails(buildNailed(c, cIndexLimit: cIndexLimit))
    
        for i in 0..<a.count {
            if !hasAnyNailBetween(cumulativeNails, begin: A[i], end: B[i]) {
                return false
            }
        }
    
        return true
    }

    var minNailNum = -1

    var lower = 0

    var upper = C.count

    while lower <= upper {
        let middle = (lower + upper) / 2
    
        if coverAll(A, b: B, c: C, cIndexLimit: middle) {
            minNailNum = middle
            upper = middle - 1
        } else {
            lower = middle + 1
        }
    }

    return minNailNum
}
