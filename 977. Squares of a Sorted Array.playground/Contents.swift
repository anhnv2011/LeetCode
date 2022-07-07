import UIKit

//https://leetcode.com/problems/squares-of-a-sorted-array/
//977. Squares of a Sorted Array

//Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
//Example 1:
//
//Input: nums = [-4,-1,0,3,10]
//Output: [0,1,9,16,100]
//Explanation: After squaring, the array becomes [16,1,0,9,100].
//After sorting, it becomes [0,1,9,16,100].
//Example 2:
//
//Input: nums = [-7,-3,2,3,11]
//Output: [4,9,9,49,121]

//bình phương mỗi phần tử trong mảng sau đó sắp xếp
// cách giải

//c1 Runtime: 266 ms,
//class Solution {
//    func sortedSquares(_ nums: [Int]) -> [Int] {
//        var arr = nums
//        for i in 0..<arr.count {
//            arr[i] = arr[i] * arr [i]
//         }
//        arr.sort()
//        return arr
//    }
//}

// c2 Runtime: 322 ms
class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var arr = nums.map({$0 * $0})
        arr.sort()
        return arr
    }
}
let s = Solution()
s.sortedSquares([-4,-1,0,3,10])
s.sortedSquares([-7,-3,2,3,11])
