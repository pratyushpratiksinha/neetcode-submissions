class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        dict = {}
        for index, element in enumerate(nums):
            dict[element] = index
        
        for index, element in enumerate(nums):
            other_element = target - element
            if other_element in dict:
                if dict[other_element] != index:
                    return [index, dict[other_element]]

        return [0, 0]