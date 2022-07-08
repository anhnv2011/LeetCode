import UIKit

//https://leetcode.com/problems/pascals-triangle/
//118. Pascal's Triangle
//Easy
//
//Given an integer numRows, return the first numRows of Pascal's triangle.
//
//In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:
//
//Example 1:
//
//Input: numRows = 5
//Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
//Example 2:
//
//Input: numRows = 1
//Output: [[1]]


//Cách giải: dùng mảng 2 chiều
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var arrPascal = [[Int]]()
        for i in 0..<numRows {
            var arrChild = [Int]()
            for j in 0...i {
                if j == 0 || i == j {
                    arrChild.append(1)
                } else {
                    let number = arrPascal[i-1][j-1] + arrPascal[i-1][j]
                    arrChild.append(number)
                }
            }
            arrPascal.append(arrChild)
        }
        return arrPascal
    }
}
let s = Solution()
s.generate(1)
s.generate(5)
