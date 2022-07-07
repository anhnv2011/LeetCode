import UIKit

//https://leetcode.com/problems/reverse-words-in-a-string-iii/
//Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
//
//
//
//Example 1:
//
//Input: s = "Let's take LeetCode contest"
//Output: "s'teL ekat edoCteeL tsetnoc"
//Example 2:
//
//Input: s = "God Ding"
//Output: "doG gniD"
//
//
//Constraints:
//
//1 <= s.length <= 5 * 104
//s contains printable ASCII characters.
//s does not contain any leading or trailing spaces.
//There is at least one word in s.
//All the words in s are separated by a single space.


//Đề bài: đảo ngược chuỗi trước dấu cách

// Cách giải 1 : Runtime: 189 ms
//- tạo 1 mảng chứa các string
//- tạo 1 biến để lưu vị trí bắt đầu đảo
//- duyệt mảng, đến khi gặp dấu cách thì đảo chuỗi từ biến vị trí đầu, rồi gán giá trị mới cho biến rồi tiếp tục
//class Solution {
//    func reverseWords(_ s: String) -> String {
//        var arr = Array(s)
//        var startReverse = 0
//        for i in 0..<arr.count {
//            if i + 1 == arr.count || arr[i + 1] == " " {
//                arr[startReverse...i].reverse()
//                startReverse = i + 2 //thêm dấu cách và vị trí mới là 2
//            }
//        }
//
//        return String(arr)
//    }
//}


// Cach 2: Runtime: 308 ms
//- dùng func tạo 1 mảng các kí tự chia cách bằng dấu cách
//- đảo ngược từng phần tử trong mảng


class Solution {
    func reverseWords(_ s: String) -> String {
    
        let allword = s.components(separatedBy: " ")
        var sword:String = ""
        for word in allword {
            var newword = ""
            var new = Array(word)
            new.reverse()
            for c in new {
                newword += String(c)
            }
            sword += newword + " "
        }
        
        return sword
    }
}
let s = Solution()
s.reverseWords("Let's take LeetCode contest")
s.reverseWords("God Ding")
