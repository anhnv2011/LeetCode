import UIKit

//https://leetcode.com/problems/count-the-number-of-consistent-strings/
//1684. Count the Number of Consistent(nhất quán) Strings
//Easy
//
//You are given a string allowed consisting of distinct characters and an array of strings words. A string is consistent if all characters in the string appear in the string allowed.
//
//Return the number of consistent strings in the array words.
//
//
//
//Example 1:
//
//Input: allowed = "ab", words = ["ad","bd","aaab","baa","badab"]
//Output: 2
//Explanation: Strings "aaab" and "baa" are consistent since they only contain characters 'a' and 'b'.
//Example 2:
//
//Input: allowed = "abc", words = ["a","b","c","ab","ac","bc","abc"]
//Output: 7
//Explanation: All strings are consistent.
//Example 3:
//
//Input: allowed = "cad", words = ["cc","acd","b","ba","bac","bad","ac","d"]
//Output: 4
//Explanation: Strings "cc", "acd", "ac", and "d" are consistent.
class Solution {
    // c1
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var result = 0
        var dict = [Character:Bool]()
        for i in allowed {
            dict[i] = true
        }
        for string in words {
            var pass = false
            for charcter in string {
                if dict[charcter] != true {
                    pass = false
                    break
                } else {
                    pass = true
                }
            }
            if pass == true {
                result += 1
            }
        }
        return result
    }
    
    //c2: toi uu hon cach 1 la them set, bo gia tri pass di
    func countConsistentStrings2(_ allowed: String, _ words: [String]) -> Int {
        var result = 0
        var dict = [Character:Bool]()
        for i in allowed {
            dict[i] = true
        }
    
        for string in words {
            let stringSet = Set(string)
            for (index, charcter) in stringSet.enumerated() {
                if dict[charcter] != true {
                   
                    break
                } else {
                    if index == stringSet.count - 1 {
                        result += 1
                    }
                    
                }
            }
            
        }
        return result
    }
}
let allowed = "ab", words = ["ad","bd","aaab","baa","badab"]
//Output: 2

Solution().countConsistentStrings(allowed, words)
Solution().countConsistentStrings2(allowed, words)
