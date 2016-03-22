public func solution(T : Tree?) -> Int {
    // write your code in Swift 2.2 (Linux)
    func treeHeight(t: Tree) -> Int {
        var leftHeight = 0
    
        var rightHeight = 0
    
        if t.l != nil {
            leftHeight = 1 + treeHeight(t.l!)
        }
    
        if t.r != nil {
        rightHeight = 1 + treeHeight(t.r!)
        }   
    
        return max(leftHeight, rightHeight)
    }

    return treeHeight(T!)
}
