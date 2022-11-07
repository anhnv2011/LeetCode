import UIKit

//https://leetcode.com/problems/two-out-of-three/
//2032. Two Out of Three
//Easy
//
//Given three integer arrays nums1, nums2, and nums3, return a distinct array containing all the values that are present in at least two out of the three arrays. You may return the values in any order.
//
//
//Example 1:
//
//Input: nums1 = [1,1,3,2], nums2 = [2,3], nums3 = [3]
//Output: [3,2]
//Explanation: The values that are present in at least two arrays are:
//- 3, in all three arrays.
//- 2, in nums1 and nums2.
//Example 2:
//
//Input: nums1 = [3,1], nums2 = [2,3], nums3 = [1,2]
//Output: [2,3,1]
//Explanation: The values that are present in at least two arrays are:
//- 2, in nums2 and nums3.
//- 3, in nums1 and nums2.
//- 1, in nums1 and nums3.
//Example 3:
//
//Input: nums1 = [1,2,2], nums2 = [4,3,3], nums3 = [5]
//Output: []
//Explanation: No value is present in at least two arrays.
//
//
//Constraints:
//
//1 <= nums1.length, nums2.length, nums3.length <= 100
//1 <= nums1[i], nums2[j], nums3[k] <= 100
class Solution {
    //c1:
    func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        var dicts = [Int:Int]()
        let num1 = Set(nums1)
        let num2 = Set(nums2)
        let num3 = Set(nums3)
        let arr = Array(num1) + Array(num2 ) + Array(num3)
        for i in arr.indices{
            if let _ = dicts[arr[i]] {
                dicts[arr[i]]! += 1
            } else {
                dicts[arr[i]] = 1
            }
        }
        let result = dicts.filter({$0.value>1}).map({$0.key})
        
        return result
    }
    
    //c2
    func twoOutOfThree2(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        var result = Set<Int>()
        let num1 = Set(nums1)
        let num2 = Set(nums2)
        let num3 = Set(nums3)
        for i in 0..<nums1.count {
            if num2.contains(nums1[i]) || num3.contains(nums1[i]) {
                result.insert(nums1[i])
            }
        }
        
        for i in 0..<nums2.count {
            if num1.contains(nums2[i]) || num3.contains(nums2[i]) {
                result.insert(nums2[i])
            }
        }
        
        for i in 0..<nums3.count {
            if num1.contains(nums3[i]) || num2.contains(nums3[i]) {
                result.insert(nums3[i])
            }
        }
        return Array(result)
    }
}
let nums1 = [1,1,3,2], nums2 = [2,3], nums3 = [3]
//Output: [3,2]

Solution().twoOutOfThree(nums1, nums2, nums3)
Solution().twoOutOfThree2(nums1, nums2, nums3)

