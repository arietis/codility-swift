public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    if A.count == 0 {
        return -1
    }
    
    var a: [Int : Int] = [:]

    for i in 0..<A.count {
        if a[A[i]] != nil {
            a[A[i]]? += 1
        } else {
            a[A[i]] = 1
        }
    }

    var domValue = Int(Double(A.count) * 0.5)

    var dom = -1

    for i in a.keys {
        if a[i] > domValue {
            dom = i
            domValue = a[i]!
        }
    }

    return A.indexOf(dom) ?? -1
}
