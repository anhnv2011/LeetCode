import UIKit

//You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.
//
//Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.
//
//You are given an API bool isBadVersion(version) which returns whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.
//

//cách giải, để tìm điểm lỗi đầu tiên ta cũng làm như binary search rồi so sánh

/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */
class Solution : VersionControl {
   func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n
        var bad = 0
    while left <= right {
        let mid = (left + right)/2
        let x = isBadVersion(mid)
        if x {
            right = mid - 1
            bad = mid
        } else {
            left = mid + 1
        }
    }
        return bad
}

}
