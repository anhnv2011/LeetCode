import UIKit
//https://leetcode.com/problems/maximum-product-difference-between-two-pairs/
//1913. Maximum Product Difference Between Two Pairs
//Easy
//
//The product difference between two pairs (a, b) and (c, d) is defined as (a * b) - (c * d).
//
//For example, the product difference between (5, 6) and (2, 7) is (5 * 6) - (2 * 7) = 16.
//Given an integer array nums, choose four distinct indices w, x, y, and z such that the product difference between pairs (nums[w], nums[x]) and (nums[y], nums[z]) is maximized.
//
//Return the maximum such product difference.
//
//
//
//Example 1:
//
//Input: nums = [5,6,2,7,4]
//Output: 34
//Explanation: We can choose indices 1 and 3 for the first pair (6, 7) and indices 2 and 4 for the second pair (2, 4).
//The product difference is (6 * 7) - (2 * 4) = 34.
//Example 2:
//
//Input: nums = [4,2,5,9,7,4,8]
//Output: 64
//Explanation: We can choose indices 3 and 6 for the first pair (9, 8) and indices 1 and 5 for the second pair (2, 4).
//The product difference is (9 * 8) - (2 * 4) = 64.
//
//
//Constraints:
//
//4 <= nums.length <= 104
//1 <= nums[i] <= 104
class Solution {
    //c1:
    func maxProductDifference(_ nums: [Int]) -> Int {
        let newNums = nums.sorted()
        let min = newNums[0] * newNums [1]
        let max = newNums[nums.count-1] * newNums[nums.count-2]
        return max - min
    }
    
    //c2:
    func maxProductDifference2(_ nums: [Int]) -> Int {
        var max = Int.min
        var max2 = Int.min
        var min = Int.max
        var min2 = Int.max

        for n in nums {
            if max < n {
                max2 = max
                max = n
            } else if max2 < n && n <= max {
                max2 = n
            }

            if min > n {
                min2 = min
                min = n
            } else if min2 > n && n >= min  {
                min2 = n
            }

            
        }
      
        return (max2 * max) - (min * min2)
    }
}
let nums = [5,6,2,7,4]
//Output: 34
Solution().maxProductDifference(nums)
Solution().maxProductDifference2(nums)

