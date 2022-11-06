import UIKit

//https://leetcode.com/problems/number-of-students-doing-homework-at-a-given-time/
//1450. Number of Students Doing Homework at a Given Time
//Easy
//
//Given two integer arrays startTime and endTime and given an integer queryTime.
//
//The ith student started doing their homework at the time startTime[i] and finished it at time endTime[i].
//
//Return the number of students doing their homework at time queryTime. More formally, return the number of students where queryTime lays in the interval [startTime[i], endTime[i]] inclusive.
//
//
//
//Example 1:
//
//Input: startTime = [1,2,3], endTime = [3,2,7], queryTime = 4
//Output: 1
//Explanation: We have 3 students where:
//The first student started doing homework at time 1 and finished at time 3 and wasn't doing anything at time 4.
//The second student started doing homework at time 2 and finished at time 2 and also wasn't doing anything at time 4.
//The third student started doing homework at time 3 and finished at time 7 and was the only student doing homework at time 4.


///giair thichs đề bài: Đang làm bài tập túc giờ cho
class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {


        var result = 0

        for i in 0..<endTime.count {
        
          
            if startTime[i] == queryTime && endTime[i] == queryTime {
                result += 1
            } else if queryTime >= startTime[i] &&  queryTime <= endTime[i] {
                result += 1
            }
        }
        
        return result
    }
}
let startTime = [1,2,3], endTime = [3,2,7], queryTime = 4
//Output: 1
Solution().busyStudent(startTime, endTime, queryTime)
let startTime2 = [4], endTime2 = [4], queryTime2 = 4
//Output: 1
Solution().busyStudent(startTime2, endTime2, queryTime2)

let startTime3 = [9,8,7,6,5,4,3,2,1]
let endTime3 = [10,10,10,10,10,10,10,10,10]
let queryTime3 = 5

Solution().busyStudent(startTime3, endTime3, queryTime3)
