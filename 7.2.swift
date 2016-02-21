public func solution(inout A : [Int], inout _ B : [Int]) -> Int {
    // write your code in Swift 2.2
    var flowingDown: [Int] = []

    var survivors = 0

    for i in 0..<A.count {
        if B[i] == 0 {
            if flowingDown.count == 0 {
                survivors += 1
            } else {
                while flowingDown.count > 0 {
                    if A[i] > flowingDown.last {
                        flowingDown.popLast()
                    } else {
                        break
                    }
                
                    if flowingDown.count == 0 {
                        survivors += 1
                    }
                }
            }
        } else {
            flowingDown.append(A[i])
        }
    }

    return survivors + flowingDown.count
}
