import UIKit

//https://leetcode.com/problems/two-sum/
//1. Two Sum
//Easy
//
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.
//
//
//Example 1:
//
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
//Example 2:
//
//Input: nums = [3,2,4], target = 6
//Output: [1,2]
//Example 3:
//
//Input: nums = [3,3], target = 6
//Output: [0,1]

//Cách 1: Runtime: 55 ms
/* Time Complexity: O(n) */
//tạo 1 dict để lưu vị trí index của giá trị
//đuyệt (index value) của mảng  đến khi nào mà dict[target - num] mà có giá trị thì đó chính là kết quả cần tìm

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            }
            dict[num] = i
        }
        return [Int]()
    }
}

let s = Solution()
s.twoSum([2,7,11,15], 9)

//i = 0
//num = 2
//dict[9 -3] = nil => dict[2] = 0
//
//i = 1
//num = 7
//dict[9-7] = dict[2] = 0 => lastindext = 0
//
//var a = [2,7,11,15,18]
//for (i, num) in a.enumerated() {
//    print("i: \(i)")
//    print("num: \(num)")
//}
