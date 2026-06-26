class Solution {
    func longestPalindrome(_ s: String) -> String {
        let str = Array(s)
        guard str.count > 1 else { return s }
        var output = ""

        for index in 0..<str.count {
            let odd = checkPalindrome(index, index)
            let even = checkPalindrome(index, index + 1)
            let longest = odd.count > even.count ? odd : even
            output = longest.count > output.count ? longest : output 
        }

        return output

        func checkPalindrome(_ l: Int, _ r: Int) -> String {
            var left = l
            var right = r
            while left >= 0 && right < str.count && str[left] == str[right] {
                left -= 1
                right += 1
            }
            return String(str[left + 1..<right])
        }
    }
}
