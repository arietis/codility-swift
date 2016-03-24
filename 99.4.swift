public func solution(inout A : [Point2D]) -> Int {
    // write your code in Swift 2.2 (Linux)
    var lowestY = A[0].y

    var lowestYIndex: [Int] = []

    for i in 0..<A.count {
        if A[i].y < lowestY {
            lowestY = A[i].y
            lowestYIndex = [i]
        } else if A[i].y == lowestY {
            lowestYIndex.append(i)
        }
    }

    var startPoint = lowestYIndex[0]

    var lowestYArray = Array(count: A.count, repeatedValue: false)

    for i in lowestYIndex {
        lowestYArray[i] = true
    }

    while lowestYArray[startPoint] == true {
        startPoint = (startPoint + 1) % A.count
    }

    startPoint = (startPoint - 1 + A.count) % A.count

    let rotatedA = Array(A[startPoint..<A.count] + A[0..<startPoint])

    func isClockwise(a: Point2D, b: Point2D, c: Point2D) -> Int {
        let result = (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x)
    
        if result > 0 {
            return 1
        } else if result < 0 {
            return -1
        } else {
            return 0
        }
    }

    let direction = isClockwise(rotatedA[rotatedA.count - 1], b: rotatedA[0], c: rotatedA[1])

    let extendedA = rotatedA + Array(rotatedA[0..<2])

    for i in 0..<A.count {
        let temp = isClockwise(extendedA[i], b: extendedA[i + 1], c: extendedA[i + 2])
    
        if temp * direction < 0 {
            return (i + i + startPoint) % A.count
        }
    }

    return -1
}
