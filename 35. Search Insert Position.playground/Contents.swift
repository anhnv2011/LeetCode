import UIKit

//https://leetcode.com/problems/search-insert-position/
//Example 1:
//
//Input: nums = [1,3,5,6], target = 5
//Output: 2
//Example 2:
//
//Input: nums = [1,3,5,6], target = 2
//Output: 1
//Example 3:
//
//Input: nums = [1,3,5,6], target = 7
//Output: 4


//cách giải : tìm lần từ đầu đến cuối, giá trị lớn hơn tất cả hoặc không trùng thì in numbber.count còn không thì in vị trí 
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
      var index = 0
        for i in 0...nums.count-1 {
           
            if nums[i] >= target {
                
                index = i
                break
            }
             else {
                index = nums.count
                
            }
        }
        return index
    }
}

var a = Solution()
a.searchInsert([1,3,5,6], 5)
a.searchInsert([1,3,5,6], 2)
a.searchInsert([1,3,5,6], 7)
