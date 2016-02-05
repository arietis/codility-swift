public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    let n = A.count
    
    let sum = A.reduce(0, combine: +)
    
    let esum = (2 + n) * (n + 1) / 2
    
    return esum - sum
}
