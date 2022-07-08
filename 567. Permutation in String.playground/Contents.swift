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
        guard s1.count <= s2.count else {
            return false
        }
        
        func allZero(_ counts: [Int]) -> Bool {
            for i in 0 ..< 26 {
                if counts[i] != 0 {
                    return false
                }
            }
            return true
        }
        
        let chars1 = Array(s1.unicodeScalars)
        let chars2 = Array(s2.unicodeScalars)
//        print(chars1)
        let len1 = chars1.count
        let len2 = chars2.count
        var counts = [Int](repeatElement(0, count: 26))
        
//        print(counts)
        for i in 0 ..< len1 {
            counts[Int(chars1[i].value - 97)] += 1
//            print("1", counts)
            counts[Int(chars2[i].value - 97)] -= 1
//            print("2", counts)
        }
        print("len1      :", counts)
        
        if allZero(counts) { return true }
        
        for i in len1 ..< len2 {
            
            counts[Int(chars2[i].value - 97)] -= 1
            print("char2     :", counts)
            counts[Int(chars2[i - len1].value - 97)] += 1
            print("char[i-len]", counts )
            //print(counts)
            if allZero(counts) { return true }
        }
        return false
        
    }
}

//i = 2
//count[]
let s = Solution()
s.checkInclusion("ab", "eidbaooo")
//s.checkInclusion("ab", "eidboaoo")
