import UIKit

//https://leetcode.com/problems/missing-number/
//Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
//
//
//
//Example 1:
//
//Input: nums = [3,0,1]
//Output: 2
//Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
//Example 2:
//
//Input: nums = [0,1]
//Output: 2
//Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
//Example 3:
//
//Input: nums = [9,6,4,2,3,5,7,0,1]
//Output: 8
//Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.

//c1: 117 ms
//class Solution {
//    func missingNumber(_ nums: [Int]) -> Int {
//        let num = nums.sorted()
//        var target = 0
//        for num in num {
//            if num != target {
//                return target
//            }
//            target += 1
//        }
//        return target
//
//    }
//}


//c2 : tính tổng 0...n bằng công thức toán học rồi trừ đi tổng của mảng
// Runtime 254 ms
//class Solution {
//    func missingNumber(_ nums: [Int]) -> Int {
//        let n = nums.count
//        let sumN = n * (n+1)/2
//        let sumArray = nums.reduce(0,+)
//        return sumN - sumArray
//    }
//}

//c3 : binary search
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let num = nums.sorted()
        var left = 0
        var right = num.count
        print(num)
        while left < right {
           
            let mid = (left + right)/2
            print(mid)
            print(num[mid])
            if num[mid] > mid {
                right = mid
            } else if num[mid] <= mid {
                left = mid + 1
            }
            print(left)
            print(right)
            
            print("------")
           
        }
        
        return left
    }
}

let s = Solution()
s.missingNumber([9,6,4,2,3,5,7,0,1])
s.missingNumber([0,2])
