class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)

        var leftProduct = 1
        for i in 0..<nums.count {
            result[i] = leftProduct
            leftProduct *= nums[i]
        }

        var rightProduct = 1    
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            result[i] *= rightProduct
            rightProduct *= nums[i]
        }
        return result
    }
}
