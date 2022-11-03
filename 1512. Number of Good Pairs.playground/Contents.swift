import UIKit
//https://leetcode.com/problems/number-of-good-pairs/
//1512. Number of Good Pairs
//
//Given an array of integers nums, return the number of good pairs.
//
//A pair (i, j) is called good if nums[i] == nums[j] and i < j.
//
//
//
//Example 1:
//
//Input: nums = [1,2,3,1,1,3]
//Output: 4
//Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
//Example 2:
//
//Input: nums = [1,1,1,1]
//Output: 6
//Explanation: Each pair in the array are good.
//Example 3:
//
//Input: nums = [1,2,3]
//Output: 0
class Solution {
    //c1: force
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var result = 0
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count{
                if nums[i] == nums[j]{
                    result += 1
                }
            }
        }
        return result
    }
}
let nums1 = [1,2,3,1,1,3]
let nums2 = [1,1,1,1]
let nums3 = [1,2,3]

let s = Solution()
s.numIdenticalPairs(nums1)
