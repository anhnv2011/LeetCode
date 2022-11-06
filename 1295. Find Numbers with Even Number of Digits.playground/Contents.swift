import UIKit

//https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
//1295. Find Numbers with Even Number of Digits
//Easy
//
//Given an array nums of integers, return how many of them contain an even number of digits.
//
//
//
//Example 1:
//
//Input: nums = [12,345,2,6,7896]
//Output: 2
//Explanation:
//12 contains 2 digits (even number of digits).
//345 contains 3 digits (odd number of digits).
//2 contains 1 digit (odd number of digits).
//6 contains 1 digit (odd number of digits).
//7896 contains 4 digits (even number of digits).
//Therefore only 12 and 7896 contain an even number of digits.
//Example 2:
//
//Input: nums = [555,901,482,1771]
//Output: 1
//Explanation:
//Only 1771 contains an even number of digits.
//
//
//Constraints:
//
//1 <= nums.length <= 500
//1 <= nums[i] <= 105
class Solution {
    
    //c1:
    func findNumbers(_ nums: [Int]) -> Int {
        var result = 0
        for i in nums {
            if countNumberOfDigit(n: i) % 2 == 0 {
                result += 1
            }
        }

        return result
    }
    func countNumberOfDigit(n: Int) -> Int{
        var count = 1
        var n = n
        while n/10 > 0 {
            count += 1
            n = n/10
        }
        return count
    }
    
    
    //c2: biến thành string để có thể đếm =))
     func findNumbers2(_ nums: [Int]) -> Int {
        var count = 0
        for i in nums {
            count += String(i).count % 2 == 0 ? 1 : 0
        }
        return count
    }

}
let nums = [12,345,2,6,7896]
//Output: 2
Solution().findNumbers(nums)
Solution().findNumbers2(nums)
