class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var output = Set<[Int]>()

        for i in 0..<nums.count {
            var seen = Set<Int>()
            for j in i+1..<nums.count {
                let complement = -(nums[i] + nums[j])
                if seen.contains(complement) {
                    output.insert([nums[i], nums[j], complement].sorted())
                }
                seen.insert(nums[j])
            }
        }
        return Array(output)
    }
}
