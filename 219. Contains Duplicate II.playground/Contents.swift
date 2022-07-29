import UIKit


//https://leetcode.com/problems/contains-duplicate-ii/
//Easy
//
//Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.
//
//
//
//Example 1:
//
//Input: nums = [1,2,3,1], k = 3
//Output: true
//Example 2:
//
//Input: nums = [1,0,1,1], k = 1
//Output: true
//Example 3:
//
//Input: nums = [1,2,3,1,2,3], k = 2
//Output: false

//=================================================


class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        
        var dictNumber = [Int:Int]()
        for (index, num) in nums.enumerated(){
            if let _ = dictNumber[num], ((index - dictNumber[num]!) <= k) {
                return true
            } else {
                dictNumber[num] = index
            }
        }
        return false
    }
}

let s = Solution()
s.containsNearbyDuplicate([1,2,3,1,2,3], 2)
s.containsNearbyDuplicate([1,0,1,1], 1)
