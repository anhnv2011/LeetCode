import UIKit

//https://leetcode.com/problems/find-target-indices-after-sorting-array/
//2089. Find Target Indices After Sorting Array
//Easy
//You are given a 0-indexed integer array nums and a target element target.
//
//A target index is an index i such that nums[i] == target.
//
//Return a list of the target indices of nums after sorting nums in non-decreasing order. If there are no target indices, return an empty list. The returned list must be sorted in increasing order.
//
//
//
//Example 1:
//
//Input: nums = [1,2,5,2,3], target = 2
//Output: [1,2]
//Explanation: After sorting, nums is [1,2,2,3,5].
//The indices where nums[i] == 2 are 1 and 2.
//Example 2:
//
//Input: nums = [1,2,5,2,3], target = 3
//Output: [3]
//Explanation: After sorting, nums is [1,2,2,3,5].
//The index where nums[i] == 3 is 3.
//Example 3:
//
//Input: nums = [1,2,5,2,3], target = 5
//Output: [4]
//Explanation: After sorting, nums is [1,2,2,3,5].
//The index where nums[i] == 5 is 4.
class Solution {
    
    //c1:
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        let nums = nums.sorted()
        for (index, value) in nums.enumerated(){
            if value == target {
                result.append(index)
            }
        }
        return result
    }
    
    //c2: Binary search
    func targetIndices2(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        let nums = nums.sorted()
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = ( left + right ) / 2
            if nums[mid] == target{
                result.append(mid)
                //Vì đã có số giống, và đây à mảng đã sắp xếp, các kết quả sẽ liền trước hoặc liền sau
                var mid1 = mid + 1
                var mid2 = mid - 1
                while mid1 < nums.count && nums[mid1] == target {
                    result.append(mid1)
                    mid1 += 1
                }
                while mid2 >= 0 && nums[mid2] == target {
                    result.append(mid2)
                    mid2 -= 1

                }
                break
                
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return result.sorted()
    }
}


let nums = [1,2,5,2,3], target = 2
//Output: [1,2]

//Solution().targetIndices(nums, target)
Solution().targetIndices2(nums, target)
