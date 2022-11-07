import UIKit

//https://leetcode.com/problems/first-unique-character-in-a-string/
//387. First Unique Character in a String
//Easy
//
//
//Example 1:
//
//Input: s = "leetcode"
//Output: 0
//Example 2:
//
//Input: s = "loveleetcode"
//Output: 2
//Example 3:
//
//Input: s = "aabb"
//Output: -1
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dicts = [Character:Int]()
        for (i, value) in s.enumerated(){
      
            if let _ = dicts[value] {
                dicts[value] = -1
            } else {
                dicts[value] = i
            }
        }
        
        if let result = dicts.filter({$0.value >= 0}).values.min(){
            return result
        }
     return -1
    }
}
let s = "leetcode"
//Output: 0
Solution().firstUniqChar(s)
