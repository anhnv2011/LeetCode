import UIKit

//https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/
//1299. Replace Elements with Greatest Element on Right Side
//Easy
//
//Given an array arr, replace every element in that array with the greatest element among the elements to its right, and replace the last element with -1.
//
//After doing so, return the array.
//
//
//
//Example 1:
//
//Input: arr = [17,18,5,4,6,1]
//Output: [18,6,6,6,1,-1]
//Explanation:
//- index 0 --> the greatest element to the right of index 0 is index 1 (18).
//- index 1 --> the greatest element to the right of index 1 is index 4 (6).
//- index 2 --> the greatest element to the right of index 2 is index 4 (6).
//- index 3 --> the greatest element to the right of index 3 is index 4 (6).
//- index 4 --> the greatest element to the right of index 4 is index 5 (1).
//- index 5 --> there are no elements to the right of index 5, so we put -1.
//Example 2:
//
//Input: arr = [400]
//Output: [-1]
//Explanation: There are no elements to the right of index 0.
//
//
//Constraints:
//
//1 <= arr.length <= 104
//1 <= arr[i] <= 105
class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var result = [Int]()
        for i in 0..<arr.count{
            var max = 0
            for j in (i+1)..<arr.count{
                if arr[j] > max {
                    max = arr[j]
                }
            }
            result.append(max)
        }
        if arr.count == 1 {
            result[0] = -1
        } else {
            result[arr.count-1] = -1
        }
        return result
    }
}
let arr = [17,18,5,4,6,1]
//Output: [18,6,6,6,1,-1]

Solution().replaceElements(arr)
