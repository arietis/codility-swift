public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2 (Linux)
    func countInversion(inout a: [Int], begin: Int, end: Int) -> Int {
        if begin >= end {
            return 0
        }
    
        let mid = (begin + end) / 2
    
        var inversionNum = countInversion(&a, begin: begin, end: mid) + countInversion(&a, begin: mid + 1, end: end)
    
        var merged = Array(count: end - begin + 1, repeatedValue: 0)
    
        var index1 = begin
    
        var index2 = mid + 1
    
        for i in 0..<merged.count {
            if index2 == end + 1 || (index1 != mid + 1 && a[index1] <= A[index2]) {
                merged[i] = a[index1]
                index1 += 1
            } else {
                merged[i] = a[index2]
                index2 += 1
                inversionNum += mid + 1 - index1
            }
        }
    
        for i in begin...end {
            a[i] = merged[i - begin]
        }
    
        return inversionNum
    }

    let inversionNum = countInversion(&A, begin: 0, end: A.count - 1)

    return inversionNum > 1000000000 ? -1 : inversionNum
}
