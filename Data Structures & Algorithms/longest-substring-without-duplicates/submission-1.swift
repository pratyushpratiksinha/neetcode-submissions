class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let arr = Array(s)
        var output = 0
        var dict = [Character: Int]()
        var leftPointer = 0

        for rightPointer in 0..<arr.count {
            if let index = dict[arr[rightPointer]] {
                leftPointer = max(leftPointer, index + 1)
            }
            dict[arr[rightPointer]] = rightPointer
            output = max(output, rightPointer - leftPointer + 1)
        }

        return output
    }
}
