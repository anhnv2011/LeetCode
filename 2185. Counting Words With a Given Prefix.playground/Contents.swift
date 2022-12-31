import UIKit

//https://leetcode.com/problems/counting-words-with-a-given-prefix/
//2185. Counting Words With a Given Prefix
//Easy
//You are given an array of strings words and a string pref.
//
//Return the number of strings in words that contain pref as a prefix.
//
//A prefix of a string s is any leading contiguous substring of s.
//
//
//
//Example 1:
//
//Input: words = ["pay","attention","practice","attend"], pref = "at"
//Output: 2
//Explanation: The 2 strings that contain "at" as a prefix are: "attention" and "attend".
//Example 2:
//
//Input: words = ["leetcode","win","loops","success"], pref = "code"
//Output: 0
//Explanation: There are no strings that contain "code" as a prefix.
//
//
//Constraints:
//
//1 <= words.length <= 100
//1 <= words[i].length, pref.length <= 100
//words[i] and pref consist of lowercase English letters.
class Solution {
    
    // c1
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        var result = 0
        for word in words {
            var i = 0
            var count = 0
            while i <= pref.count - 1 && i <= word.count - 1 {
                let wordChar = word.index(word.startIndex, offsetBy: i)
                let prefChar = pref.index(word.startIndex, offsetBy: i)
                if word[wordChar] == pref[prefChar]{
                    count += 1
                }
                i += 1
                }
            
            if count == pref.count {
                result += 1
            }
            }
        return result
        }
    
    
    //c2
    func prefixCount2(_ words: [String], _ pref: String) -> Int {
        
        
        let result = words.filter({$0.hasPrefix(pref)}).count
        
        return result
        }
    
    
    //c3
    func prefixCount3(_ words: [String], _ pref: String) -> Int {
        
        let result = words.reduce(0) {
                $0 + ($1.hasPrefix(pref) ? 1 : 0)
                
        }
        
        return result
        }
    
    
  
}
let words = ["pay","attention","practice","attend"], pref = "at"
//Output: 2

Solution().prefixCount(words, pref)
let words2 = ["leetcode","win","loops","success"], pref2 = "code"
// 0
Solution().prefixCount(words2, pref2)
Solution().prefixCount2(words, pref)
Solution().prefixCount3(words, pref)
