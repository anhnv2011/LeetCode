import UIKit

//https://leetcode.com/problems/maximum-69-number/
//1323. Maximum 69 Number
//Easy
//
//You are given a positive integer num consisting only of digits 6 and 9.
//
//Return the maximum number you can get by changing at most one digit (6 becomes 9, and 9 becomes 6).
//
//
//
//Example 1:
//
//Input: num = 9669
//Output: 9969
//Explanation:
//Changing the first digit results in 6669.
//Changing the second digit results in 9969.
//Changing the third digit results in 9699.
//Changing the fourth digit results in 9666.
//The maximum number is 9969.
//Example 2:
//
//Input: num = 9996
//Output: 9999
//Explanation: Changing the last digit 6 to 9 results in the maximum number.
//Example 3:
//
//Input: num = 9999
//Output: 9999
//Explanation: It is better not to apply any change.
class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var arraynum = [String]()
        var num = num
        while num != 0  {
            arraynum.insert(String(num%10), at: 0)
            num /= 10
        }
        
        for i in arraynum.indices {
            if arraynum[i] == "6" {
                arraynum[i] = "9"
                break
            }
        }
        var result = ""
        for i in arraynum {
            result += i
        }
        
        return Int(result)!
    }
    
//    c2
    func maximum69Number2 (_ num: Int) -> Int {
         var string = Array(String(num))
         if let first6 = string.firstIndex(of: "6") {
            string[first6] = "9"
         }
         return Int(String(string)) ?? num
     }
}
let num = 9669
//Output: 9969
Solution().maximum69Number(num)
Solution().maximum69Number2(num)
