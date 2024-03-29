import UIKit

//https://leetcode.com/problems/array-partition/
//561. Array Partition
//Easy
//
//Given an integer array nums of 2n integers, group these integers into n pairs (a1, b1), (a2, b2), ..., (an, bn) such that the sum of min(ai, bi) for all i is maximized. Return the maximized sum.
//
//
//
//Example 1:
//
//Input: nums = [1,4,3,2]
//Output: 4
//Explanation: All possible pairings (ignoring the ordering of elements) are:
//1. (1, 4), (2, 3) -> min(1, 4) + min(2, 3) = 1 + 2 = 3
//2. (1, 3), (2, 4) -> min(1, 3) + min(2, 4) = 1 + 2 = 3
//3. (1, 2), (3, 4) -> min(1, 2) + min(3, 4) = 1 + 3 = 4
//So the maximum possible sum is 4.
//Example 2:
//
//Input: nums = [6,2,6,5,1,2]
//Output: 9
//Explanation: The optimal pairing is (2, 1), (2, 5), (6, 6). min(2, 1) + min(2, 5) + min(6, 6) = 1 + 2 + 6 = 9.
//
//
//Constraints:
//
//1 <= n <= 104
//nums.length == 2 * n
//-104 <= nums[i] <= 104


///giải thích đề bài: tìm cách ghép cặp đôi sao cho số min của mỗi cặp cộng vào nhau là ra tổng lớn nhất có thể
class Solution {
    
    //c1:
    func arrayPairSum(_ nums: [Int]) -> Int {
        let numss = nums.sorted()
        var result = 0
        for i in 0..<nums.count/2{
            result += numss[(2*i)]
        }
        return result
    }
    //c2:
    func arrayPairSumw(_ nums: [Int]) -> Int {
        let numss = nums.sorted()
        var result = 0
        for i in stride(from: 0, to: numss.count-1, by: 2) {
            result += numss[i]
        }
        return result
    }
}
let nums = [1,4,3,2]
//Output: 4
Solution().arrayPairSum(nums)
let nums2 = [6,2,6,5,1,2]
//Output: 9
Solution().arrayPairSumw(nums2)



/*
 0
 2
 4
 */
