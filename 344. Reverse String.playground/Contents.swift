import UIKit

//https://leetcode.com/problems/reverse-string/
//344. Reverse String
//
//Write a function that reverses a string. The input string is given as an array of characters s.
//
//You must do this by modifying the input array in-place with O(1) extra memory.
//
//
//
//Example 1:
//
//Input: s = ["h","e","l","l","o"]
//Output: ["o","l","l","e","h"]
//Example 2:
//
//Input: s = ["H","a","n","n","a","h"]
//Output: ["h","a","n","n","a","H"]
//
//
//Constraints:
//
//1 <= s.length <= 105
//s[i] is a printable ascii character.


//ĐỀ bài, đảo ngược 1 chuỗi

// Cách 1 : Dùng hàm reverse của swift
//class Solution {
//    func reverseString(_ s: inout [Character]) {
//        s.reverse()
//    }
//}


// cách 2: dungf while
//class Solution {
//    func reverseString(_ s: inout [Character]) {
//        var i = 0
//        var j = s.count - 1
//        while i < j {
//            s.swapAt(i, j)
//            i += 1
//            j -= 1
//        }
//    }
//}

// cach 3: dùng vòng for, ta chỉ duyệt số lần bằng 1 nửa mảng để swap 2 số
class Solution {
    func reverseString(_ s: inout [Character]) {
        for i in 0..<s.count/2 {
            s.swapAt(i, s.count - 1 - i)
        }
    }
}
let s = Solution()

var string:[Character] = ["h","e","l","l","o"]
s.reverseString(&string)
