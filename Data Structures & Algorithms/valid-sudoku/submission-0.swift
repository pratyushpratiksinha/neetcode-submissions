class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var seen = Set<String>()

        for r in 0..<9 {
            for c in 0..<9 {
                let val = board[r][c]

                if val == "."  { continue }

                let rowKey = "\(val) in row \(r)"
                let columnKey = "\(val) in column \(c)"
                let boxKey = "\(val) in box \(r/3) - \(c/3)"

                if !seen.insert(rowKey).inserted ||
                    !seen.insert(columnKey).inserted ||
                    !seen.insert(boxKey).inserted {
                        return false
                }
            }
        }
        return true
    }
}
