import UIKit

var str = "Hello, playground"
//https://leetcode.com/problems/pascals-triangle-ii/
//Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.
//
//In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:
//
//
//
//
//Example 1:
//
//Input: rowIndex = 3
//Output: [1,3,3,1]

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var arrPasscal = [[Int]]()
        for i in 0...rowIndex {
            var arrChild = [Int]()
            for j in 0...i {
                if j == 0 || j == i {
                    arrChild.append(1)
                } else {
                    let value = arrPasscal[i-1][j-1] + arrPasscal[i-1][j]
                    arrChild.append(value)
                }
            }
            arrPasscal.append(arrChild)
        }
    
        return arrPasscal[rowIndex]
    }
}

let s = Solution()
s.getRow(3)
