import UIKit

//https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/
//1337. The K Weakest Rows in a Matrix
//Easy
//You are given an m x n binary matrix mat of 1's (representing soldiers) and 0's (representing civilians). The soldiers are positioned in front of the civilians. That is, all the 1's will appear to the left of all the 0's in each row.
//
//A row i is weaker than a row j if one of the following is true:
//
//The number of soldiers in row i is less than the number of soldiers in row j.
//Both rows have the same number of soldiers and i < j.
//Return the indices of the k weakest rows in the matrix ordered from weakest to strongest.
//
//
//
//Example 1:
//
//Input: mat =
//[[1,1,0,0,0],
// [1,1,1,1,0],
// [1,0,0,0,0],
// [1,1,0,0,0],
// [1,1,1,1,1]],
//k = 3
//Output: [2,0,3]
//Explanation:
//The number of soldiers in each row is:
//- Row 0: 2
//- Row 1: 4
//- Row 2: 1
//- Row 3: 2
//- Row 4: 5
//The rows ordered from weakest to strongest are [2,0,3,1,4].
//Example 2:
//
//Input: mat =
//[[1,0,0,0],
// [1,1,1,1],
// [1,0,0,0],
// [1,0,0,0]],
//k = 2
//Output: [0,2]
//Explanation:
//The number of soldiers in each row is:
//- Row 0: 1
//- Row 1: 4
//- Row 2: 1
//- Row 3: 1
//The rows ordered from weakest to strongest are [0,2,3,1].
class Solution {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var result = [Int]()
        var dicts = [Int:Int]()  // index lam key, solider la value
        
        for i in 0..<mat.count{
            for j in 0..<mat[i].count{
                if let _ = dicts[i] {
                    dicts[i]! += mat[i][j] //Thay vì tìm số 1 thì bởi vì chỉ có 0 với 1 thì ta cộng vào cho nhanh
                } else {
                    dicts[i] = mat[i][j]
                }
            }
        }
       
        // xếp theo số lính nhỏ, nếu số lính giống nhau thì xếp ai có index nhỏ hơn
        let sortDict = dicts.sorted{
            $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
        }
        result = Array(sortDict.map{
            $0.0
        }[0..<k])
        return result
        
        
    }
}
let mat =
    [[1,1,0,0,0],
     [1,1,1,1,0],
     [1,0,0,0,0],
     [1,1,0,0,0],
     [1,1,1,1,1]]
let k = 3
//Output: [2,0,3]
Solution().kWeakestRows(mat, k)
