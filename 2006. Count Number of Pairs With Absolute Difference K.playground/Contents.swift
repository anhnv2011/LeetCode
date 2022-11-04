import UIKit

//https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k/
//2006. Count Number of Pairs With Absolute Difference K
//Easy
//
//Given an integer array nums and an integer k, return the number of pairs (i, j) where i < j such that |nums[i] - nums[j]| == k.
//
//The value of |x| is defined as:
//
//x if x >= 0.
//-x if x < 0.
//
//
//Example 1:
//
//Input: nums = [1,2,2,1], k = 1
//Output: 4
//Explanation: The pairs with an absolute difference of 1 are:
//- [1,2,2,1]
//- [1,2,2,1]
//- [1,2,2,1]
//- [1,2,2,1]
//Example 2:
//
//Input: nums = [1,3], k = 3
//Output: 0
//Explanation: There are no pairs with an absolute difference of 3.
//Example 3:
//
//Input: nums = [3,2,1,5,4], k = 2
//Output: 3
//Explanation: The pairs with an absolute difference of 2 are:
//- [3,2,1,5,4]
//- [3,2,1,5,4]
//- [3,2,1,5,4]
//
//
//Constraints:
//
//1 <= nums.length <= 200
//1 <= nums[i] <= 100
//1 <= k <= 99
class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        var counter = 0
        for e in nums {
            let t = k + e
            counter += nums.filter { $0 == t }.count
        }
        return counter
    }
    
    func countKDifference2(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        var dict = [Int: Int]()
        for n in nums {
            result += dict[n-k] ?? 0
            result += dict[n+k] ?? 0
            dict[n, default:0] += 1
        }
        return result
    }
    func countKDifference3(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        
        for j in 0..<nums.count{
            for i in 0..<j{
                if nums[i] - nums[j] == k || nums[i] - nums[j] == (0 - k){
                    result += 1
                }
            }
        }
        
        return result
    }
}
let nums = [1,2,2,1], k = 1
Solution().countKDifference(nums, k)
Solution().countKDifference2(nums, k)
Solution().countKDifference3(nums, k)




/*
    giair thich cach 2
    nums = [3,2,1,5,4], k = 2
    - n = 3
    dict[n-k] = dict[1] => result = 0
    dict[n+k] = dict[5] => result = 0
    dict[3] = 1
    - n = 2
    dict[n-k] = dict[0] => result = 0
    dict[n+k] = dict[4] => result = 0
    dict[2] = 1
    - n = 1
    dict[n-k] = dict[-1] => result = 0
    dict[n+k] = dict[3] => result = 1
    dict[1] = 1
    - n = 5
    dict[n-k] = dict[3] => result = 2
    dict[n+k] = dict[8] => result = 2
    dict[5] = 1
    - n = 4
    dict[n-k] = dict[2] => result = 3
    dict[n+k] = dict[7] => result = 3
    dict[1] = 1

*/
