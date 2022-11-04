import UIKit
//https://leetcode.com/problems/sum-of-all-odd-length-subarrays/
//1588. Sum of All Odd Length Subarrays
//Easy
//
//Given an array of positive integers arr, return the sum of all possible odd-length subarrays of arr.
//
//A subarray is a contiguous subsequence of the array.
//
//
//
//Example 1:
//
//Input: arr = [1,4,2,5,3]
//Output: 58
//Explanation: The odd-length subarrays of arr and their sums are:
//[1] = 1
//[4] = 4
//[2] = 2
//[5] = 5
//[3] = 3
//[1,4,2] = 7
//[4,2,5] = 11
//[2,5,3] = 10
//[1,4,2,5,3] = 15
//If we add all these together we get 1 + 4 + 2 + 5 + 3 + 7 + 11 + 10 + 15 = 58
//Example 2:
//
//Input: arr = [1,2]
//Output: 3
//Explanation: There are only 2 subarrays of odd length, [1] and [2]. Their sum is 3.
//Example 3:
//
//Input: arr = [10,11,12]
//Output: 66
class Solution {
    //c1: bruteForce
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var result = 0
        
        for i in 0..<arr.count {
            for j in i..<arr.count {
                if (j - i) % 2 == 0 { // là lẻ vì vị trí 2 - 0 = 2, vị trí 4 với vị trí 1 thì số lươg vẫn lẻ
                    var currentSum = 0
                    for k in i..<(j+1){
                        currentSum += arr[k]
                    }
                    result += currentSum
                }
                
            }
        }
        
        return result
    }
    
    //c2:
    func sumOddLengthSubarrays2(_ arr: [Int]) -> Int {
        var result = 0
        
        for i in 0..<arr.count{
            var currentSum = 0
            for j in i..<arr.count {
                currentSum += arr[j]
                if (j-i) % 2 == 0 {
                    result += currentSum
                }
            }
        }
        return result
    }
    
    //c3: https://leetcode.com/problems/sum-of-all-odd-length-subarrays/discuss/1232658/swift-on-tc-easily-readable-code
    
    //https://www.youtube.com/watch?v=J5IIH35EBVE&t=37s
    func sumOddLengthSubarrays3(_ arr: [Int]) -> Int {
        var result = 0
        for index in 0..<arr.count {
            let start = arr.count-index
            let end = index+1
            let appearInAllSubArray = start*end //Tổng của tất cả các trường hợp, cả chẵn và lẻ
            var apperInOddSubArray = appearInAllSubArray/2 // chẵn + lẻ => tổng
            if appearInAllSubArray % 2 != 0 {
                apperInOddSubArray += 1 // số lẻ chia ra thì bị làm tròn xuống nên phải công thêm 1 trong trường hợp arr.count là số lẻ
            }
            result += (arr[index] * apperInOddSubArray)
        }
        return result
    }
    
}
let arr = [1,4,2,5,3]
Solution().sumOddLengthSubarrays(arr)
Solution().sumOddLengthSubarrays2(arr)
Solution().sumOddLengthSubarrays3(arr)
