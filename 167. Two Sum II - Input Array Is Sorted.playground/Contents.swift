import UIKit

//https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
//Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.
//
//Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.
//
//The tests are generated such that there is exactly one solution. You may not use the same element twice.
//
//Your solution must use only constant extra space.
//
//
//
//Example 1:
//
//Input: numbers = [2,7,11,15], target = 9
//Output: [1,2]
//Explanation: The sum of 2 and 7 is 9. Therefore, index1 = 1, index2 = 2. We return [1, 2].
//Example 2:
//
//Input: numbers = [2,3,4], target = 6
//Output: [1,3]
//Explanation: The sum of 2 and 4 is 6. Therefore index1 = 1, index2 = 3. We return [1, 3].
//Example 3:
//
//Input: numbers = [-1,0], target = -1
//Output: [1,2]
//Explanation: The sum of -1 and 0 is -1. Therefore index1 = 1, index2 = 2. We return [1, 2].
//

//Constraints:
//
//2 <= numbers.length <= 3 * 104
//-1000 <= numbers[i] <= 1000
//numbers is sorted in non-decreasing order.
//-1000 <= target <= 1000
//The tests are generated such that there is exactly one solution.



// Đề bai: cho 1 mảng số đã sắp xếp tăng dần, trả về vị trí của 2 số có tổng bằng số mục tiêu

// Cách giải, vì là mảng đã sắp xếp, nên ta sẽ dùng 2 biến với i = 0 và j = nums.count. Nếu nums[i] + nums[j] > target thi ta giảm j, ngược lại thì tăng i
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var i = 0
        var j = numbers.count - 1
        var resutl = [Int]()
        
        while i < j {
            let sum = numbers[i] + numbers[j]
            if sum == target {
                i += 1
                j += 1
                resutl.append(i)
                resutl.append(j)
            } else if sum > target {
                j -= 1
            } else if sum < target {
                i += 1
            }
        }
        return resutl
    }
    
}
let s = Solution()
s.twoSum([2,7,11,15], 9)
