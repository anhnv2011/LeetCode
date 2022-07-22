import UIKit


//https://leetcode.com/problems/contains-duplicate/
//Easy
//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
//Example 1:
//
//Input: nums = [1,2,3,1]
//Output: true
//Example 2:
//
//Input: nums = [1,2,3,4]
//Output: false
//Example 3:
//
//Input: nums = [1,1,1,3,3,4,3,2,4,2]
//Output: true
//
//
//Constraints:
//
//1 <= nums.length <= 105
//-109 <= nums[i] <= 109
//================================================


class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
       
        var dict = [Int:Int]()

        for num in nums {
            if let _ = dict[num] {
                return true
            } else {
                dict[num] = 1
            }
        }
        return false
    }
}

let s = Solution()
s.containsDuplicate([1,2,3,4])
s.containsDuplicate([1,1,1,3,3,4,3,2,4,2])
