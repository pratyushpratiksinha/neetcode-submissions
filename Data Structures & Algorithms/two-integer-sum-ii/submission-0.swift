class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var leftPointer = 0
        var rightPointer = numbers.count - 1

        while leftPointer < rightPointer {
            let sum = numbers[leftPointer] + numbers[rightPointer]
            if sum == target {
                return [leftPointer + 1, rightPointer + 1]
            } else if sum > target {
                rightPointer -= 1
            } else {
                leftPointer += 1
            }
        }
        return []
    }
}
