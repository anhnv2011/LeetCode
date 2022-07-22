import UIKit

//https://leetcode.com/problems/merge-sorted-array/
//You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.
//
//Merge nums1 and nums2 into a single array sorted in non-decreasing order.
//
//The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.
//
//
//
//Example 1:
//
//Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
//Output: [1,2,2,3,5,6]
//Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
//The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
//Example 2:
//
//Input: nums1 = [1], m = 1, nums2 = [], n = 0
//Output: [1]
//Explanation: The arrays we are merging are [1] and [].
//The result of the merge is [1].
//Example 3:
//
//Input: nums1 = [0], m = 0, nums2 = [1], n = 1
//Output: [1]
//Explanation: The arrays we are merging are [] and [1].
//The result of the merge is [1].
//Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.


// cách giải dịch chuyển phần từ phần tử cuối cùng của chuỗi 2
// vì 2 chuỗi là chuỗi đã sắp xếp, nên nếu giá trị cuối của dãy 2 nếu lớn hơn vị trí cuối có  giá trị dãy 1 thì vị trí cuối của dãy sẽ là từ dãy 2 lúc này thì ta giảm j đi, hoặc ngược lại nó sẽ vị trí có giá trị cuối của 1 (lúc này ta giảm i đi)
// nếu i mà nhỏ hơn 0 thì sai (ví dụ dãy chỉ có toàn 0 mà ko có giá trị) thì ta cho thẳng giá trị của chuỗi 2 sang
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
            var i1 = m - 1 // Vị trí cuối cùng có giá trị chuỗi 1
            var j2 = n - 1 // Vị trí cuối cùng của chuỗi 2
            var t = m + n - 1 // vị trí cuối cùng của chuỗi ghép
            while j2 >= 0 {
                if i1 >= 0 && nums1[i1] > nums2[j2] {
                    nums1[t] = nums1[i1]
                    t -= 1
                    i1 -= 1
                } else {
                    nums1[t] = nums2[j2]
                    t -= 1
                    j2 -= 1
                    
                }
            }
    
        print(nums1)
    }
}

let s = Solution()

var nums1 = [1,2,3,0,0,0]
var nums2 = [2,5,6]
s.merge(&nums1, 3, nums2, 3)
