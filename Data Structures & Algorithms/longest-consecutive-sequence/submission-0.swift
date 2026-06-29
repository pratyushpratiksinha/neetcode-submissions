class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var seen = Set(nums)
        var output = 0

        for i in 0..<nums.count {
            var currentNum = nums[i]
            var currentStreak = 1

            while seen.contains(currentNum - 1) {
                currentStreak += 1
                currentNum -= 1
            }
            output = max(output, currentStreak)
        }
        return output
    }
}
