import UIKit

//https://leetcode.com/problems/valid-anagram/
//242. Valid Anagram
//Easy
//
//Given two strings s and t, return true if t is an anagram of s, and false otherwise.
//
//An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
//
//
//Example 1:
//
//Input: s = "anagram", t = "nagaram"
//Output: true
//Example 2:
//
//Input: s = "rat", t = "car"
//Output: false



//đề bài kiểm tra xem 2 mảng có phải là kết quả đảo lộn thứ tự chữ cái của nhau ko
//cách 1 Runtime: 40 ms,
// tạo 2 mảng từ chuỗi, tạo 2 dict, cứ mỗi 1 lần có kí tự giống thì value của dict + thêm 1, sau đó so sánh value khi có cùng key của 2 dict xem có giống nhau ko

//class Solution {
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//        if s.count != t.count {
//            return false
//        }
//
//        var sHashmap = [Character:Int]()
//        var tHashmap =  [Character:Int]()
//
//        for char in s {
//            sHashmap[char] = (sHashmap[char] ?? 0) + 1
//        }
//        for char in t {
//            tHashmap[char] = (tHashmap[char] ?? 0) + 1
//        }
//
//        for (key, value) in sHashmap {
//            let tvalue = tHashmap[key]
//            if tvalue == value {
//                continue
//            } else {
//                return false
//            }
//        }
//        return true
//    }
//}


//c2 dùng func có sẵn của swift Runtime: 47 ms
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        let sHashmap = Dictionary(grouping: s) {$0}
        let tHasmap = Dictionary(grouping: t, by: {$0})
        print(sHashmap)
        // ["a": ["a"], "t": ["t"], "r": ["r", "r", "r"]] cho vi du 2
        return sHashmap == tHasmap
    }
}

let s = Solution()
s.isAnagram("anagram","nagaram") // true
s.isAnagram("rrrat", "cccar") // false
