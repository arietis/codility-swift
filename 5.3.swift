public func solution(inout S : String, inout _ P : [Int], inout _ Q : [Int]) -> [Int] {
    // write your code in Swift 2.2
    let N = S.characters.count

    let M = P.count

    var result: [Int] = Array(count: M, repeatedValue: 0)

    var a: [Int] = Array(count: N + 1, repeatedValue: 0)

    var c: [Int] = Array(count: N + 1, repeatedValue: 0)

    var g: [Int] = Array(count: N + 1, repeatedValue: 0)

    var t: [Int] = Array(count: N + 1, repeatedValue: 0)

    var s = S.characters.map {String($0)}

    for i in 0..<N {
        switch s[i] {
            case "A": a[i + 1] = 1
            case "C": c[i + 1] = 1
            case "G": g[i + 1] = 1
            case "T": t[i + 1] = 1
            default: break
        }
    }

    for i in 1...N {
        a[i] += a[i - 1]
        c[i] += c[i - 1]
        g[i] += g[i - 1]
        t[i] += t[i - 1]
    }

    for i in 0..<M {
        if (a[Q[i] + 1] - a[P[i]]) != 0 {
            result[i] = 1
        } else if (c[Q[i] + 1] - c[P[i]]) != 0 {
            result[i] = 2
        } else if (g[Q[i] + 1] - g[P[i]]) != 0 {
            result[i] = 3
        } else if (t[Q[i] + 1] - t[P[i]]) != 0 {
            result[i] = 4
        }
    }

    return result
}
