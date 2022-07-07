import UIKit

//https://leetcode.com/problems/permutation-in-string/
//567. Permutation in String
//Medium
//
//Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.
//
//In other words, return true if one of s1's permutations is the substring of s2.
//
//
//Example 1:
//
//Input: s1 = "ab", s2 = "eidbaooo"
//Output: true
//Explanation: s2 contains one permutation of s1 ("ba").
//Example 2:
//
//Input: s1 = "ab", s2 = "eidboaoo"
//Output: false
//
//
//Constraints:
//
//1 <= s1.length, s2.length <= 104
//s1 and s2 consist of lowercase English letters.



//Đề bài: string 2 có chứa 1 hoán vị của string 1 hay ko


class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        
        return false
    }
}

let s = Solution()
s.checkInclusion("ab", "eidbaooo")
s.checkInclusion("ab", "eidboaoo")
