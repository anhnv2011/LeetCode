import UIKit

//https://leetcode.com/problems/rotate-array/
//189. Rotate Array
//
//Given an array, rotate the array to the right by k steps, where k is non-negative.
//
//
//Example 1:
//
//Input: nums = [1,2,3,4,5,6,7], k = 3
//Output: [5,6,7,1,2,3,4]
//Explanation:
//rotate 1 steps to the right: [7,1,2,3,4,5,6]
//rotate 2 steps to the right: [6,7,1,2,3,4,5]
//rotate 3 steps to the right: [5,6,7,1,2,3,4]
//Example 2:
//
//Input: nums = [-1,-100,3,99], k = 2
//Output: [3,99,-1,-100]
//Explanation:
//rotate 1 steps to the right: [99,-1,-100,3]
//rotate 2 steps to the right: [3,99,-1,-100]

//đề bài
//Thực hiện k lần, mỗi lần thì số cuối thành số đầu tiên, các số khác lùi về sau 1 đơn vị

//cách giải 1 Runtime 264 ms
// đầu tiên dùng hàm đảo có sẵn của swif để đảo cả chuỗi
// tiếp theo lấy số dư của k/number.count, (VÌ NẾU K BẰNG ĐÚNG SỐ phần tử trong mảng thì mảng trở thành ban đầu)
//đảo tiếp từ 0...số dư
// và đảo từ só dư đến cuối
//class Solution {
//    func rotate(_ nums: inout [Int], _ k: Int) {
//        let count = nums.count
//        let reverse = k % count
//        nums.reverse()
//        nums[0..<reverse].reverse()
//        nums[reverse..<count].reverse()
//
//        print(nums)
//    }
//}

//cách 2, tự viết hàm swap  Runtime 383 ms

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if nums.isEmpty{return}
        let reversepoint = k % nums.count
        swap(&nums, 0, nums.count - 1)
        swap(&nums, 0, reversepoint - 1)
        swap(&nums, reversepoint, nums.count - 1)

    }
    func swap(_ nums: inout [Int], _ start: Int, _ end: Int){
        var start = start
        var end = end
        while start < end {
            nums.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
}

let s = Solution()
var a = [1,2,3,4,5,6,7]
s.rotate(&a, 3)
