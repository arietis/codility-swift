public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    var candidate = 0

    var count = 0

    for i in A {
        if count == 0 {
            candidate = i
        }
        if candidate == i {
            count += 1
        } else {
            count -= 1
        }
    }

    count = 0

    for i in A {
        if i == candidate {
            count += 1
        }
    }

    var equiLeaders = 0

    var leftLeaders = 0

    var rightLeaders = count

    for i in 0..<A.count {
        if A[i] == candidate {
            leftLeaders += 1
            rightLeaders -= 1
        }
    
        if leftLeaders > (i + 1) / 2 && rightLeaders > (A.count - i - 1) / 2 {
            equiLeaders += 1
        }
    }

    return equiLeaders
}
