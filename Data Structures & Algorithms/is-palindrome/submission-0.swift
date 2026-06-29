class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let arr = Array(s.lowercased())
        var leftIndex = 0
        var rightIndex = arr.count - 1

        while leftIndex <= rightIndex {

            while leftIndex < rightIndex && !(arr[leftIndex].isLetter || arr[leftIndex].isNumber) {
                leftIndex += 1
            }

            while leftIndex < rightIndex && !(arr[rightIndex].isLetter || arr[rightIndex].isNumber) {
                rightIndex -= 1
            }

            if arr[leftIndex] != arr[rightIndex] {
                return false
            }
            leftIndex += 1
            rightIndex -= 1
        }

        return true
    }
}
