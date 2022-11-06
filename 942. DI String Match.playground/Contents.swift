import UIKit
//https://leetcode.com/problems/di-string-match/
//942. DI String Match
//Easy
//
//A permutation perm of n + 1 integers of all the integers in the range [0, n] can be represented as a string s of length n where:
//
//s[i] == 'I' if perm[i] < perm[i + 1], and
//s[i] == 'D' if perm[i] > perm[i + 1].
//Given a string s, reconstruct the permutation perm and return it. If there are multiple valid permutations perm, return any of them.
//
//
//
//Example 1:
//
//Input: s = "IDID"
//Output: [0,4,1,3,2]
//Example 2:
//
//Input: s = "III"
//Output: [0,1,2,3]
//Example 3:
//
//Input: s = "DDI"
//Output: [3,2,0,1]
//
//
//Constraints:
//
//1 <= s.length <= 105
//s[i] is either 'I' or 'D'.



//// giải thích đề bài, nếu string có n kí tự thì mảng số trả về n+1 số, các số này chạy trong dải 0-> n
///nếu I thì chạy từ đầu, còn nếu D chạy từ cuối ]

class Solution {
    func diStringMatch(_ s: String) -> [Int] {
        var result:[Int] = [Int](repeating: 0, count:s.count + 1)
        var min = 0
        var max = s.count
        let arr = Array(s)
        for i in 0..<s.count {
            if arr[i] == "I"{
                print("Min",i, min, arr[i])
                result[i] = min
                min = min + 1
            }else{
                print("max",i, max, arr[i])

                result[i] = max
                max = max - 1
            }
        }
        result[s.count] = max //bằng max hay min là như nhau
        print("result[S.count]", result[s.count])
        return result
    }
}
let s = "IDID"
//Output: [0,4,1,3,2]

Solution().diStringMatch(s)
