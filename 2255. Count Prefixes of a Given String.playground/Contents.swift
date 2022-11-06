 import UIKit
//https://leetcode.com/problems/count-prefixes-of-a-given-string/
//2255. Count Prefixes of a Given String
//Easy
//
//You are given a string array words and a string s, where words[i] and s comprise only of lowercase English letters.
//
//Return the number of strings in words that are a prefix of s.
//
//A prefix of a string is a substring that occurs at the beginning of the string. A substring is a contiguous sequence of characters within a string.
//
//
//
//Example 1:
//
//Input: words = ["a","b","c","ab","bc","abc"], s = "abc"
//Output: 3
//Explanation:
//The strings in words which are a prefix of s = "abc" are:
//"a", "ab", and "abc".
//Thus the number of strings in words which are a prefix of s is 3.
//Example 2:
//
//Input: words = ["a","a"], s = "aa"
//Output: 2
//Explanation:
//Both of the strings are a prefix of s.
//Note that the same string can occur multiple times in words, and it should be counted each time.
//
//
//Constraints:
//
//1 <= words.length <= 1000
//1 <= words[i].length, s.length <= 10
//words[i] and s consist of lowercase English letters only.
class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {
        
        let arrPrefixes = words.filter({
            s.hasPrefix($0)
        })
        return arrPrefixes.count
        
    }
    func countPrefixes2(_ words: [String], _ s: String) -> Int {
        var result = 0
        for word in words{
      
            if word.count <= s.count{
                var startIndex = word.startIndex
                let endIndex = word.index(before: word.endIndex)
                while startIndex <= endIndex{
                    if (word[startIndex] != s[startIndex]){
                        break
                    }
                    startIndex = word.index(after: startIndex)
                    if startIndex > endIndex{
                        result += 1
                    }
                }
            }
        }
        return result
    }
}
let words = ["a","b","c","ab","bc","abc"], s = "abc"
//Output: 3
Solution().countPrefixes(words, s)
Solution().countPrefixes2(words, s)
