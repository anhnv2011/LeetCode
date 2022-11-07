import UIKit

//https://leetcode.com/problems/longest-common-prefix/
//14. Longest Common Prefix
//Easy
//
//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".
//
//
//
//Example 1:
//
//Input: strs = ["flower","flow","flight"]
//Output: "fl"
//Example 2:
//
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.
//
//
//Constraints:
//
//1 <= strs.length <= 200
//0 <= strs[i].length <= 200
//strs[i] consists of only lowercase English letters.
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""
        var minCount = Int.max
        var shortesString = ""
        for i in strs {
            if i.count < minCount {
                minCount = i.count
                shortesString = i
            }
        }
       
        loop: for (i, value) in shortesString.enumerated() {
            for str in strs {
              if str[str.index(str.startIndex, offsetBy: i)] != value {
                break loop
              }
            }
            result += String(value)
        }
        return result
    }
}
let strs = ["flower","flow","flight"]
//Output: "fl"
Solution().longestCommonPrefix(strs)
