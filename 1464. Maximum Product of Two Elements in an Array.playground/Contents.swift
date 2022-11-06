import UIKit

//https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/
//1464. Maximum Product of Two Elements in an Array
//Easy
//
//Given the array of integers nums, you will choose two different indices i and j of that array. Return the maximum value of (nums[i]-1)*(nums[j]-1).
//
//
//Example 1:
//
//Input: nums = [3,4,5,2]
//Output: 12
//Explanation: If you choose the indices i=1 and j=2 (indexed from 0), you will get the maximum value, that is, (nums[1]-1)*(nums[2]-1) = (4-1)*(5-1) = 3*4 = 12.
//Example 2:
//
//Input: nums = [1,5,4,5]
//Output: 16
//Explanation: Choosing the indices i=1 and j=3 (indexed from 0), you will get the maximum value of (5-1)*(5-1) = 16.
//Example 3:
//
//Input: nums = [3,7]
//Output: 12
class Solution {
    //c1:
    func maxProduct(_ nums: [Int]) -> Int {
        var newNums = nums.sorted()
        let n = nums.count
        let result = (newNums[n-1]-1)*(newNums[n-2]-1)
        return result
    }
    //c2:
    func maxProduct2(_ nums: [Int]) -> Int {
        var max = Int.min
        var max2 = Int.min
        for i in 0..<nums.count{
            if nums[i] > max {
                max2 = max
                max = nums[i]
            } else if nums[i] > max2 {
                max2 = nums[i]
            }
        }
        
        let result = (max - 1) * (max2 - 1)
        return result
    }
}
let nums = [3,4,5,2]
//Output: 12
let nums2 = [1,5,4,5]
//Output: 16
Solution().maxProduct(nums)
Solution().maxProduct2(nums2)
