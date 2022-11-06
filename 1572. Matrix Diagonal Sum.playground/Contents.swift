import UIKit

//https://leetcode.com/problems/matrix-diagonal-sum/
//1572. Matrix Diagonal Sum
//Easy
//
//Given a square matrix mat, return the sum of the matrix diagonals.
//
//Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.
//
//
//
//Example 1:
//
//
//Input: mat = [[1,2,3],
//              [4,5,6],
//              [7,8,9]]
//Output: 25
//Explanation: Diagonals sum: 1 + 5 + 9 + 3 + 7 = 25
//Notice that element mat[1][1] = 5 is counted only once.
//Example 2:
//
//Input: mat = [[1,1,1,1],
//              [1,1,1,1],
//              [1,1,1,1],
//              [1,1,1,1]]
//Output: 8
//Example 3:
//
//Input: mat = [[5]]
//Output: 5
class Solution {
    //c1:
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var result = 0
        var i = 0, j = 0
        let n = mat.count
        while i < n && j < n   {
            result += mat[i][j]
            i += 1
            j += 1
        }
        var x = 0, y = n-1
        while x < n, y >= 0 {
            
            result += mat[x][y]
            x += 1
            y -= 1
        }
        
        if n % 2 == 1 {
            let mid = (n - 1)/2
            result -= mat[mid][mid]
        }
        return result
    }
    //c2:
    func diagonalSum2(_ mat: [[Int]]) -> Int {
        var result = 0
        let n = mat.count
       
        for i in 0..<n{
            result += mat[i][i]
            result += mat[n-1-i][i]
        }
        if n % 2 == 1 {
            let mid = (n - 1)/2
            result -= mat[mid][mid]
        }
        return result
    }
    
    
}
let mat = [[1,2,3],
              [4,5,6],
              [7,8,9]]
//Output: 25
Solution().diagonalSum(mat)
Solution().diagonalSum2(mat)
