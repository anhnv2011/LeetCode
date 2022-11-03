import UIKit

//349. Intersection of Two Arrays
//
//Given two integer arrays nums1 and nums2, return an array of their intersection (giao nhau). Each element in the result must be unique and you may return the result in any order.
//
//
//
//Example 1:
//
//Input: nums1 = [1,2,2,1], nums2 = [2,2]
//Output: [2]
//Example 2:
//
//Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
//Output: [9,4]
//Explanation: [4,9] is also accepted.


///
class Solution349 {
    
    // cach 1
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var output = [Int]()
        var dict = [Int:Int]()
        for i in nums1 {
            if nums2.contains(i) {
                if let _ = dict[i]  {
                    
                } else {
                    dict[i] = 1
                    output.append(i)
                }
            }
        }
        print(output)
        return output
    }
    
    // cach2
    func intersection2(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var set = Set<Int>()
        if nums1.count < nums2.count {
            for i in nums1 {
                if nums2.contains(i) {
                    set.insert(i)
                }
            }
        
        } else {
            for i in nums2 {
                if nums1.contains(i) {
                    set.insert(i)
                }
            }
        }
        print(Array(set))
        return Array(set)
    }
}

let s = Solution349()
let nums1 = [1,2,2,1], nums2 = [2,2]
let nums3 = [4,9,5], nums4 = [9,4,9,8,4]
s.intersection(nums1, nums2)
s.intersection2(nums3, nums4)

