import UIKit

//https://leetcode.com/problems/truncate-sentence/
//1816. Truncate Sentence
//Easy
//
//A sentence is a list of words that are separated by a single space with no leading or trailing spaces. Each of the words consists of only uppercase and lowercase English letters (no punctuation).
//
//For example, "Hello World", "HELLO", and "hello world hello world" are all sentences.
//You are given a sentence s​​​​​​ and an integer k​​​​​​. You want to truncate s​​​​​​ such that it contains only the first k​​​​​​ words. Return s​​​​​​ after truncating it.
//
//
//
//Example 1:
//
//Input: s = "Hello how are you Contestant", k = 4
//Output: "Hello how are you"
//Explanation:
//The words in s are ["Hello", "how" "are", "you", "Contestant"].
//The first 4 words are ["Hello", "how", "are", "you"].
//Hence, you should return "Hello how are you".
//Example 2:
//
//Input: s = "What is the solution to this problem", k = 4
//Output: "What is the solution"
//Explanation:
//The words in s are ["What", "is" "the", "solution", "to", "this", "problem"].
//The first 4 words are ["What", "is", "the", "solution"].
//Hence, you should return "What is the solution".
//Example 3:
//
//Input: s = "chopper is not a tanuki", k = 5
//Output: "chopper is not a tanuki"
class Solution {
    //c1:
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var result = ""
        let stringArr = s.components(separatedBy: .whitespaces)
        for i in 0..<k {
            if i == k-1 {
                result += (stringArr[i])
            } else {
                result += (stringArr[i] + " ")
            }
            
        }
        return result
    }
    
    // c2:
    func truncateSentence2(_ s: String, _ k: Int) -> String {
        var result = ""
        var spaceCount = 0
        for i in s{
            if spaceCount < k {
                if String(i) == " " {
                    spaceCount += 1
                    if spaceCount == k {
                        
                    } else {
                        result += " "
                    }
                   
                } else {
                    result += String(i)
                }
            }
            
        }
        return result
    }
}
let s = "Hello how are you Contestant", k = 4
//Output: "Hello how are you"
Solution().truncateSentence(s, k)
Solution().truncateSentence2(s, k)
