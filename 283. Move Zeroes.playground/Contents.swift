import UIKit
//https://leetcode.com/problems/move-zeroes/
//Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//
//Note that you must do this in-place without making a copy of the array.
//
//
//
//Example 1:
//
//Input: nums = [0,1,0,3,12]
//Output: [1,3,12,0,0]
//Example 2:
//
//Input: nums = [0]
//Output: [0]


//đề bài là chuyển toàn bộ số 0 xuống cuối trong khi vẫn giữ vững thứ tự sẵn có


//phân tích nếu thông thường duyệt xoá, ví dụ có dãy 1 2 0 4 5, khi duyệt đến i = 2, xoá đi thì đến vòng lặp sau khi xét i = 3 nó sẽ là số 5

// cách giải 1
//- tạo 1 mảng chứa index số 0, duyệt cả mảng ban đầu, nếu gặp số 0 thì lưu index của nó vào mảng mới
//- sau đó có biến count = 0. vì mỗi lần xoá đi mảng lại bị đẩy lên 1 index n, nên vi trí xoá mới phải là số index của không - count với count mỗi lần tăng 1
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroIndex = [Int]()
        for i in 0..<nums.count{
            if nums[i] == 0 {
                zeroIndex.append(i)
            }
        }
        var count  = 0
        for index in zeroIndex {
            // vi moi 1 lan xoa thi index cac so so bi day len 1 nen ta phai co bien count
            let removeAt = index - count
            nums.remove(at: removeAt)
            nums.append(0)
            count += 1
        }
        print(nums)
    }
}
// Cach 2: mỗi lần num[i] = 0 thì đổi chỗ mảng i và i + 1
func moveZeroes(_ nums: inout [Int]) {
    var count = nums.count
    for _ in 0..<count {
        for i in 0..<count-1 {
            if nums[i] == 0 {
                nums.swapAt(i, i+1)
            }
        }
    }
}

//Cách 3: có 1 biến current bằng 0, duyệt cả mảng, mỗi lần gặp số khác không thì đổi chỗ với với current, và current += 1
func moveZeroes(_ nums: inout [Int]) {
    var current = 0
    for i in 0..<nums.count{
        if nums[i] != 0 {
            nums.swapAt(i, current)
            current += 1

        }
    }
}



let s = Solution()
var a = [0,1,0,3,12]
s.moveZeroes(&a)
