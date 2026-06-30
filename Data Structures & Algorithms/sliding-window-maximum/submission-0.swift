class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        if k == 1 {
            return nums
        }
        var result = [Int]()
        var deque = [Int]()

        for i in 0..<nums.count {

            while !deque.isEmpty && nums[deque.last!] <= nums[i] {
                deque.removeLast()
            }

            deque.append(i)

            if deque.first! <= i - k {
                deque.removeFirst()
            }  

            if i >= k - 1 {
                result.append(nums[deque.first!])
            }
        }

        return result
    }
}
