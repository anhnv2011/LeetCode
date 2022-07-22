import UIKit

//https://leetcode.com/problems/sqrtx/
//Given a non-negative integer x, compute and return the square root of x.
//
//Since the return type is an integer, the decimal digits are truncated, and only the integer part of the result is returned.
//
//Note: You are not allowed to use any built-in exponent function or operator, such as pow(x, 0.5) or x ** 0.5.
//
//
//
//Example 1:
//
//Input: x = 4
//Output: 2
//Example 2:
//
//Input: x = 8
//Output: 2
//Explanation: The square root of 8 is 2.82842..., and since the decimal part is truncated, 2 is returned.

//c1:
class Solution {
    func mySqrt(_ x: Int) -> Int {
        var i = 0
        while (i*i) < x {
            i += 1
        }
        return i - 1
    }
}

//c2:
class Solution {
    func mySqrt(_ x: Int) -> Int {
        var min = 0
        var max = x
        while min != max {
            let mid = (min + max)/2
            if mid * mid <= x && (mid+1)*(mid+1) > x {
                return mid
            } else if mid * mid > x {
                max = mid - 1
            } else {
                min = mid + 1
            }
        }
        return min
    }
}
let s = Solution()
s.mySqrt(8)
