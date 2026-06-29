class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [[Int]: [String]]()

        for str in strs {
            var count = Array(repeating: 0, count: 26)

            for char in str {
                let index = Int(char.asciiValue! - Character("a").asciiValue!)
                count[index] += 1
            }
            dict[count, default: []].append(str)
        }

        return Array(dict.values)
    }
}
