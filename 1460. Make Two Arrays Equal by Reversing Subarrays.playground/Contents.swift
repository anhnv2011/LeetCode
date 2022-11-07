import UIKit
//https://leetcode.com/problems/make-two-arrays-equal-by-reversing-subarrays/
//1460. Make Two Arrays Equal by Reversing Subarrays
//Easy
//You are given two integer arrays of equal length target and arr. In one step, you can select any non-empty subarray of arr and reverse it. You are allowed to make any number of steps.
//
//Return true if you can make arr equal to target or false otherwise.
//
//
//
//Example 1:
//
//Input: target = [1,2,3,4], arr = [2,4,1,3]
//Output: true
//Explanation: You can follow the next steps to convert arr to target:
//1- Reverse subarray [2,4,1], arr becomes [1,4,2,3]
//2- Reverse subarray [4,2], arr becomes [1,2,4,3]
//3- Reverse subarray [4,3], arr becomes [1,2,3,4]
//There are multiple ways to convert arr to target, this is not the only way to do so.
//Example 2:
//
//Input: target = [7], arr = [7]
//Output: true
//Explanation: arr is equal to target without any reverses.
//Example 3:
//
//Input: target = [3,7,9], arr = [3,7,11]
//Output: false
//Explanation: arr does not have value 9 and it can never be converted to target.
//
//
//Constraints:
//
//target.length == arr.length
//1 <= target.length <= 1000
//1 <= target[i] <= 1000
//1 <= arr[i] <= 1000

/*
 Hướng giải, vì được xoay vô tận nên kiểu gì nó cũng ra, vì vậy nếu số các lượng các số giống hệt nhau thì đúng, khác nhau thì sai
 */

class Solution {
    
    // c1:
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        var dictTarget = [Int:Int]()
        var dictArr = [Int:Int]()
        for i in target{
            if let _ = dictTarget[i]{
                dictTarget[i]! += 1
            } else {
                dictTarget[i] = 1
            }
        }
        for i in arr {
            if let _ = dictArr[i]{
                dictArr[i]! += 1
            } else {
                dictArr[i] = 1
            }
        }
        let numdictTarget = dictTarget.count
        let numdictArr = dictArr.count
        var count = 0
        for dict in dictTarget{
            if dictTarget[dict.key] == dictArr[dict.key] {
                count += 1
            }
        }
        if count == numdictTarget && count == numdictArr {
            return true
        }
        return false
    }
    
    //c2: Thay vì dùng 2 dict, ta chỉ cần tạo 1 dict, rồi bên kia gặp giá trị giống thì trừ đi thôi, nếu xuất hiện 1 cái nào ko có giá trị => false
    func canBeEqual2(_ target: [Int], _ arr: [Int]) -> Bool {
        var dicts = [Int:Int]()
        for i in target{
            if let _ = dicts[i]{
                dicts[i]! += 1
            } else {
                dicts[i] = 1
            }
        }
        for i in arr{
            if let _ = dicts[i]{
                if dicts[i] == 1 {
                    dicts[i] = nil
                } else {
                    dicts[i]! -= 1
                }
            } else {
                return false
            }
        }
        return true
    }
}
let target = [1,2,3,4], arr = [2,4,1,3]
//Output: true
//Solution().canBeEqual(target, arr)

let target2 = [3,7,9], arr2 = [3,7,11]
//Output: false
//Solution().canBeEqual(target2, arr2)


Solution().canBeEqual2(target, arr)
Solution().canBeEqual2(target2, arr2)
