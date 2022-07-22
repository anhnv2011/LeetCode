import UIKit
//
//https://leetcode.com/problems/majority-element/
//Easy
//Given an array nums of size n, return the majority element.
//
//The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
//
//
//
//Example 1:
//
//Input: nums = [3,2,3]
//Output: 3
//Example 2:
//
//Input: nums = [2,2,1,1,1,2,2]
//Output: 2
//

//Constraints:
//
//n == nums.length
//1 <= n <= 5 * 104
//-109 <= nums[i] <= 109
//
//
//Follow-up: Could you solve the problem in linear time and in O(1) space?
//=======================================================


//Tìm số xuất hiện nhiều nhất, số đó xuất hiện nhiều hơn n/2 lần

//Cách 1, vì nó xuất hiện ít nhất n/2 => sắp xếp mảng, lấy giá trị tại n/2
//class Solution {
//    func majorityElement(_ nums: [Int]) -> Int {
//        let num = nums.sorted()
//        return num[num.count/2]
//    }
//}


//Cachs 2 dùng dict

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dictElement = [Int:Int]()
        for num in nums {
            if let _ = dictElement[num]{
                dictElement[num]! += 1
            } else {
                dictElement[num] = 1
            }
        }
        
//        return dictElement.filter({$0.value > nums.count/2}).first!.key
        return dictElement.max{ $0.value < $1.value}!.key
    }
}


let s = Solution()
s.majorityElement([2,2,1,1,1,2,2])
