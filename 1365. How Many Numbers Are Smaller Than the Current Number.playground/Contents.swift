import UIKit

//1365. How Many Numbers Are Smaller Than the Current Number
//
//Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].
//
//Return the answer in an array.
//
//
//
//Example 1:
//
//Input: nums = [8,1,2,2,3]
//Output: [4,0,1,1,3]
//Explanation:
//For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
//For nums[1]=1 does not exist any smaller number than it.
//For nums[2]=2 there exist one smaller number than it (1).
//For nums[3]=2 there exist one smaller number than it (1).
//For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
//Example 2:
//
//Input: nums = [6,5,4,8]
//Output: [2,1,0,3]
//Example 3:
//
//Input: nums = [7,7,7,7]
//Output: [0,0,0,0]
//
//
//Constraints:
//
//2 <= nums.length <= 500
//0 <= nums[i] <= 100
class Solution {
    
    //c1: force
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: nums.count)
        
        for (index, value) in nums.enumerated(){
            for i in nums {
                if i < value {
                    result[index] += 1
                }
            }
        }
        
    
        
        return result
    }
    
    //c2: hashmap
    func smallerNumbersThanCurrent2(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: nums.count)
       
        var countSameNumber = Array(repeating: 0, count: 102)
        
        //1 mang có số lần lăp lại của các phần tử trong array nums
        for num in nums {
            countSameNumber[num] += 1
        }
        
        //Dem cac số nhỏ hơn của mảng countSamenumer, số 0 ko có số nào nhỏ hơn nên ko tính, có thể lập 1 mảng mới cho clear nhưng ở đây dùng tạm ghi đè
            // tổng bằng tổng các số lặp lại của các số nhỏ hơn nó
        for i in 1..<countSameNumber.count{
            countSameNumber[i] += countSameNumber[i-1]
        }
        for i in 0..<nums.count {
            if nums[i] == 0 {
                result[i] = 0
            } else {
                result[i] = countSameNumber[nums[i] - 1]             // tổng bằng tổng các số lặp lại của các số nhỏ hơn nó nên phải trừ đi 1

            }
        }
        return result
    }
}
let nums1 = [8,1,2,2,3]
let nums2 = [6,5,4,8]
let s = Solution()
s.smallerNumbersThanCurrent(nums1)
s.smallerNumbersThanCurrent2(nums2)
