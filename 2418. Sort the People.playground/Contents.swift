import UIKit
//https://leetcode.com/problems/sort-the-people/
//2418. Sort the People
//Easy
//
//You are given an array of strings names, and an array heights that consists of distinct positive integers. Both arrays are of length n.
//
//For each index i, names[i] and heights[i] denote the name and height of the ith person.
//
//Return names sorted in descending order by the people's heights.
//
//
//
//Example 1:
//
//Input: names = ["Mary","John","Emma"], heights = [180,165,170]
//Output: ["Mary","Emma","John"]
//Explanation: Mary is the tallest, followed by Emma and John.
//Example 2:
//
//Input: names = ["Alice","Bob","Bob"], heights = [155,185,150]
//Output: ["Bob","Alice","Bob"]
//Explanation: The first Bob is the tallest, followed by Alice and the second Bob.
class Solution {
    //c1: tạo 1 dict -> tạo 1 mảng heigh sắp xếp giảm dần ->  ra mảng string theo dict với key là mảng heigh mới
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        var result = [String]()
        var dict = [Int: String]()
        for i in 0..<names.count{
            dict[heights[i]] = names[i]
        }
        let newheights = heights.sorted(by: >)
        for i in 0..<names.count{
            result.append(dict[newheights[i]]!)
        }
        return result
    }
    
    //c2: 1 mảng tuple
    func sortPeople2(_ names: [String], _ heights: [Int]) -> [String] {
        var arrTuple = [(name: String, height: Int)]()
        for i in 0..<names.count {
            arrTuple.append((names[i], heights[i]))
        }
        let sortedArr = arrTuple.sorted(by: { $0.1 > $1.1} )
        return sortedArr.map { $0.0 }
    }
}
let names = ["Mary","John","Emma"], heights = [180,165,170]
//Output: ["Mary","Emma","John"]
Solution().sortPeople(names, heights)
Solution().sortPeople2(names, heights)
