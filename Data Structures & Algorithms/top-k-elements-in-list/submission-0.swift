class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var frequency = [Int: Int]()
        var result = [Int]()

        for num in nums {
            frequency[num, default: 0] += 1
        }

        var bucket = Array(repeating: [Int](), count: nums.count + 1)

        for (num, freq) in frequency {
            bucket[freq].append(num)
        }

        for i in stride(from: bucket.count - 1, through: 0, by: -1){
            for element in bucket[i] {
                result.append(element)

                if result.count == k {
                    return result
                }
            }
        }

        return result
    }
}
