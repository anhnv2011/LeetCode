import UIKit
//
//https://leetcode.com/problems/find-first-palindromic-string-in-the-array/
//2108. Find First Palindromic String in the Array
//Easy
//
//
//Given an array of strings words, return the first palindromic string in the array. If there is no such string, return an empty string "".
//
//A string is palindromic if it reads the same forward and backward.
//
//
//
//Example 1:
//
//Input: words = ["abc","car","ada","racecar","cool"]
//Output: "ada"
//Explanation: The first string that is palindromic is "ada".
//Note that "racecar" is also palindromic, but it is not the first.
//Example 2:
//
//Input: words = ["notapalindrome","racecar"]
//Output: "racecar"
//Explanation: The first and only string that is palindromic is "racecar".
//Example 3:
//
//Input: words = ["def","ghi"]
//Output: ""
//Explanation: There are no palindromic strings, so the empty string is returned.
class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for word in words {
            if word == String(word.reversed()) {
                return word
            }
        }
        return ""
    }
}
let words = ["abc","car","ada","racecar","cool"]
//Output: "ada"

Solution().firstPalindrome(words)
