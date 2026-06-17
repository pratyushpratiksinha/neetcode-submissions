class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False

        dict = {}
        for char in s:
            if char in dict:
                dict[char] += 1
            else:
                dict[char] = 1
        
        for char in t:
            if char not in dict:
                return False

            dict[char] -= 1
            if dict[char] == 0:
                del dict[char]
        
        return len(dict) == 0
        