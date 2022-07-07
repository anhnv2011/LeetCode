import UIKit

//Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.
//
//You must write an algorithm with O(log n) runtime complexity.
//
//
//
//Example 1:
//
//Input: nums = [-1,0,3,5,9,12], target = 9
//Output: 4
//Explanation: 9 exists in nums and its index is 4
//Example 2:
//
//Input: nums = [-1,0,3,5,9,12], target = 2
//Output: -1
//Explanation: 2 does not exist in nums so return -1

// cách giải
// vì là 1 chuỗi tăng dần, đã được sắp xếp, chọn số đầu tiên là biên trái, số cuối cuòng là biên phải. Ta lặp đi lặp lại :
//    - tìm điểm chính giữa của chuỗi ,
//    - rồi so sánh nó với giá trị cần tìm, nếu số cần tìm số chính giữa thì xếp biên trái là mid + 1. Nếu nhỏ hơn thì xét biên phải là mid - 1
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = (left + right)/2
            if nums[mid] > target {
                right = mid - 1
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                return mid
            }
        }
        return -1
    }
}

//c2:
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        let i = nums.count/2
        var kq = -1
        if nums[i] >= target {
            for k in 0...i {
                if nums[k] == target {
                    kq = k
                }
            }
        } else {
            for k in i..<nums.count {
                if nums[k] == target {
                    kq = k
                }
            }
        }
        return kq
    }
}
