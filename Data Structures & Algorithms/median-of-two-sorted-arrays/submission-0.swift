class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var leftArrayPointer = 0
        var rightArrayPointer = 0
        var arr = [Int]()

        while leftArrayPointer < nums1.count && rightArrayPointer < nums2.count {
            if nums1[leftArrayPointer] <= nums2[rightArrayPointer] {
                arr.append(nums1[leftArrayPointer])
                leftArrayPointer += 1
            } else {
                arr.append(nums2[rightArrayPointer])
                rightArrayPointer += 1
            }
        }

        arr.append(contentsOf: nums1[leftArrayPointer..<nums1.count])
        arr.append(contentsOf: nums2[rightArrayPointer..<nums2.count])

        var median = Double()
        let midIndex = arr.count/2

        if arr.count % 2 == 0 {
            let firstElement = Double(arr[midIndex])
            let secondElement = Double(arr[midIndex - 1])

            median = (firstElement + secondElement)/2.0
        } else {
            median = Double(arr[midIndex])
        }

        return median
    }
}
