public func solution(inout A : [Int]) -> Int {
    // write your code in Swift 2.2
    var profit = 0

    var cheapest = A.first ?? 0

    for i in A {
        cheapest = min(cheapest, i)
        profit = max(profit, i - cheapest)
    }

    return profit
}
