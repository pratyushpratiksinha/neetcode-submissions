class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var leftPointer = 0
        var rightPointer = heights.count - 1
        var output = 0

        while leftPointer < rightPointer {
            let currentArea = (rightPointer - leftPointer) * min(heights[leftPointer], heights[rightPointer])
            output = max(currentArea, output)

            if heights[leftPointer] > heights[rightPointer] {
                rightPointer -= 1
            } else {
                leftPointer += 1
            }
        }

        return output
    }
}
