class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let arrS1 = Array(s1)
        let arrS2 = Array(s2)

        guard arrS1.count <= arrS2.count else { return false }

        var s1AsciiArray = Array(repeating: 0, count: 26)
        let aValue = Character("a").asciiValue!

        for char in arrS1 {
            let ascii = Int(char.asciiValue! - aValue)
            s1AsciiArray[ascii] += 1
        }

        var currentWindowAsciiArray = Array(repeating: 0, count: 26)

        for i in 0..<arrS1.count {
            let ascii = Int(arrS2[i].asciiValue! - Character("a").asciiValue!)
            currentWindowAsciiArray[ascii] += 1
        }

        for i in arrS1.count..<arrS2.count {
            if currentWindowAsciiArray == s1AsciiArray {
                return true
            }
            let ascii1 = Int(arrS2[i].asciiValue! - aValue)
            currentWindowAsciiArray[ascii1] += 1

            let firstWindowIndex = i - arrS1.count
            let ascii2 = Int(arrS2[firstWindowIndex].asciiValue! - aValue)
            currentWindowAsciiArray[ascii2] -= 1
        }

        return currentWindowAsciiArray == s1AsciiArray
    }
}
