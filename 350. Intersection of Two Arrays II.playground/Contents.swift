import UIKit
//https://leetcode.com/problems/intersection-of-two-arrays-ii/
//350. Intersection of Two Arrays II
//Given two integer arrays nums1 and nums2, return an array of their intersection (giao nhau). Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.
//
//
//
//Example 1:
//
//Input: nums1 = [1,2,2,1], nums2 = [2,2]
//Output: [2,2]
//Example 2:
//
//Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
//Output: [4,9]
//Explanation: [9,4] is also accepted.
class Solution {
    
    //cach1 : tạo 2 dict rồi so sánh với nhau, lấy cái value nào nhỏ hơn thì tạo số lần lặ lại theo nó
    
    func makeDict(array: [Int]) -> [Int:Int]{
        var dict = [Int: Int]()
        for i in array {
            if let _ = dict[i] {
                dict[i]! += 1
            } else {
                dict[i] = 1
            }
        }
        return dict
    }
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let dictNum1 = makeDict(array: nums1)
        let dictNum2 = makeDict(array: nums2)
        var result = [Int]()
        for (num, value1) in dictNum1 {
            if let value2 = dictNum2[num] {
                let value = min(value1, value2)
                for _ in 0..<value {
                    result.append(num)
                }
            }
        }
        print(result)
        return result
    }
    
    
    //cách 2: Sort 2 mảng, rồi so sánh từng phần tử
    func intersect2(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let sortNum1 = nums1.sorted()
        let sortNum2 = nums2.sorted()
        var result = [Int]()
        var index1 = sortNum1.startIndex, index2 = sortNum2.startIndex
        
        while index1 != sortNum1.endIndex && index2 != sortNum2.endIndex {
            
            let num1 = sortNum1[index1], num2 = sortNum2[index2]
            
            if num1 == num2 {
                result.append(num1)
                index1 += 1
                index2 += 1
            } else if num1 < num2 {
                index1 += 1
            } else {
                index2 += 1
            }
        }
        return result
    }
}
let nums1 = [1,2,2,1], nums2 = [2,2]
let nums3 = [4,9,5], nums4 = [9,4,9,8,4]

let s = Solution()
s.intersect(nums1, nums2)
s.intersect2(nums3, nums4)
