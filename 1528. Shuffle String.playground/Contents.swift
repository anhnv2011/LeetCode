import UIKit

//https://leetcode.com/problems/shuffle-string/
//1528. Shuffle String
//
//You are given a string s and an integer array indices of the same length. The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.
//
//Return the shuffled string.
//
//
//
//Example 1:
//
//
//Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3]
//Output: "leetcode"
//Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.
//Example 2:
//
//Input: s = "abc", indices = [0,1,2]
//Output: "abc"
//Explanation: After shuffling, each character remains in its position.


//giải thích ban đầu mỗi kí tự s ứng với 1 số bên indices, sau đó sắp xếp lại indice theo thứ tự tăng dần và ghép lại chuỗi mới

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var arrayString = [String]()
        var string = ""
        let sIndices = indices.sorted()
        var dict = [Int:String]()


        for i in s {
            arrayString.append(String(i))
        }
        for i in 0..<indices.count {
            dict[indices[i]] = arrayString[i]
        }
        for i in 0..<indices.count{
            string += dict[sIndices[i]]!
        }
      
        return string
        
    }
}
Solution().restoreString("codeleet", [4,5,6,7,0,2,1,3])
