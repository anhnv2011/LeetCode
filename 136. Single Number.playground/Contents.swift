import UIKit

//https://leetcode.com/problems/single-number/
//Easy
//Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
//
//You must implement a solution with a linear runtime complexity and use only constant extra space.
//
//
//
//Example 1:
//
//Input: nums = [2,2,1]
//Output: 1
//Example 2:
//
//Input: nums = [4,1,2,1,2]
//Output: 4
//Example 3:
//
//Input: nums = [1]
//Output: 1

//Tìm số chỉ xuất hiện duy nhất 1 lần trong mảng


//cách 1 dùng XOR (2 số giống nhau thì xor bằng 0) -> kết quả phép xor sẽ là số chỉ có 1 mình
//class Solution {
//    func singleNumber(_ nums: [Int]) -> Int {
//        return nums.reduce(0) { $0 ^ $1 }
//    }
//}



//Cách 2 dingf dictionanry
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dictNumber = [Int:Bool]()
        for num in nums {
            if let _ = dictNumber[num]{
                dictNumber[num] = false
            } else {
                dictNumber[num] = true
            }
        }
        return dictNumber.filter({$0.value == true}).first!.key
    }
}
let s = Solution()
s.singleNumber([4,1,2,1,2])
