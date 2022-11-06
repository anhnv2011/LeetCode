import UIKit

//https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
//1351. Count Negative Numbers in a Sorted Matrix
//Easy
//
//Given a m x n matrix grid which is sorted in non-increasing order both row-wise and column-wise, return the number of negative numbers in grid.
//
//
//
//Example 1:
//
//Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
//Output: 8
//Explanation: There are 8 negatives number in the matrix.
//Example 2:
//
//Input: grid = [[3,2],[1,0]]
//Output: 0
//
//
//Constraints:
//
//m == grid.length
//n == grid[i].length
//1 <= m, n <= 100
//-100 <= grid[i][j] <= 100
//
//
//Follow up: Could you find an O(n + m) solution?
class Solution {
//    c1:
    func countNegatives(_ grid: [[Int]]) -> Int {
        var result = 0
        for m in 0..<grid.count{
            for n in 0..<grid[m].count{
                if grid[m][n] < 0 {
                   
                    result += 1
                }
            }
        }
        return result
    }
//    c2:
    func countNegatives2(_ grid: [[Int]]) -> Int {
        var result = 0
        for m in 0..<grid.count{
            var left = 0
            let arr = grid[m]
            var right = arr.count - 1
            while left < right {
                let mid = (left + right)/2
//                print("Origin", mid)
                if arr[mid] < 0 {
                   right = mid
                    
                } else {
                   left = mid + 1
                }
            
            }
            if left == 0 && arr[left] >= 0 {
                result += arr.count - 1
            }
                  
            left = arr[left] < 0 ? left : arr.count
            result += arr.count - left
        }
        return result
    }
    
}
let grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
//Output: 8
//Solution().countNegatives(grid)


let grid2 = [[5,1,0],[-5,-5,-5]]
//Output: 3

Solution().countNegatives2(grid)
Solution().countNegatives2(grid2)
