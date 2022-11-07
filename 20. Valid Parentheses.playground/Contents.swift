import UIKit
//https://leetcode.com/problems/valid-parentheses/
//20. Valid Parentheses
//Easy
//
//16550
//
//845
//
//Add to List
//
//Share
//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Every close bracket has a corresponding open bracket of the same type.
//
//
//Example 1:
//
//Input: s = "()"
//Output: true
//Example 2:
//
//Input: s = "()[]{}"
//Output: true
//Example 3:
//
//Input: s = "(]"
//Output: false



class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.insert(char, at: 0)
                
            } else {
          
                if char == ")" && stack.first != "(" || char == "}" && stack.first != "{" || char == "]" && stack.first != "[" {
                    return false
                }
                
                stack.removeFirst()
            }
        }
        return stack.isEmpty
    }
}
let s = "()[]{}()[]{}"
//Output: true
let s2 = "(]"
//Output: false
let s3 = "([)]"
//Output: false
let s4 = "([])"
//Output: true
Solution().isValid(s)
Solution().isValid(s2)
Solution().isValid(s3)
Solution().isValid(s4)

