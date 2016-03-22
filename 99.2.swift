public func solution(inout S : String) -> Int {
    // write your code in Swift 2.2 (Linux)
    if S.characters.count == 0 {
        return -1
    }
    
    let mid = S.characters.count / 2

    let left = S[S.startIndex..<S.startIndex.advancedBy(mid)]

    let right = String(S[S.startIndex.advancedBy(mid + 1)..<S.endIndex].characters.reverse())

    if S.characters.count == 1 {
        return 0
    }

    if left != right {
        return -1
    }

    return mid
}
