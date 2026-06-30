class Solution {
    func trap(_ height: [Int]) -> Int {
        let n = height.count
        var output = 0
        var leftArr = Array(repeating: 0, count: height.count)
        var rightArr = Array(repeating: 0, count: height.count)

        leftArr[0] = height[0]
        for i in stride(from: 1, to: n, by: 1) {
            leftArr[i] = max(height[i], leftArr[i-1])
        }

        rightArr[n - 1] = height[n - 1]
        for i in stride(from: n - 2, through: 0, by: -1) {
            rightArr[i] = max(height[i], rightArr[i+1])
        }

        for i in stride(from: 0, to: n, by: 1) {
            output += height[i] - min(rightArr[i], leftArr[i])
        }
        return abs(output)
    }
}
