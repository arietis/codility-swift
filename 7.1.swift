public func solution(inout S : String) -> Int {
    // write your code in Swift 2.2
    if S.characters.count == 0 {
        return 1
    }

    if S.characters.count % 2 > 0 {
        return 0
    }
    
    var a = S.characters.map {String($0)}

    var b: [String] = []

    for i in 0..<a.count {
        switch a[i] {
        case "{", "[", "(": b.append(a[i])
        case "}": if b.last == "{" { b.removeLast() } else { return 0 }
        case "]": if b.last == "[" { b.removeLast() } else { return 0 }
        case ")": if b.last == "(" { b.removeLast() } else { return 0 }
        default: break
        }
    }
    
    if b.count > 0 {
        return 0
    } else {
        return 1
    }
}
