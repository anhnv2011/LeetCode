import UIKit
//https://leetcode.com/problems/minimum-cost-to-move-chips-to-the-same-position/
//1217. Minimum Cost to Move Chips to The Same Position
//Easy
//
//We have n chips, where the position of the ith chip is position[i].
//
//We need to move all the chips to the same position. In one step, we can change the position of the ith chip from position[i] to:
//
//position[i] + 2 or position[i] - 2 with cost = 0.
//position[i] + 1 or position[i] - 1 with cost = 1.
//Return the minimum cost needed to move all the chips to the same position.
//
//
//
//Example 1:
//
//
//Input: position = [1,2,3]
//Output: 1
//Explanation: First step: Move the chip at position 3 to position 1 with cost = 0.
//Second step: Move the chip at position 2 to position 1 with cost = 1.
//Total cost is 1.
//Example 2:
//
//
//Input: position = [2,2,2,3,3]
//Output: 2
//Explanation: We can move the two chips at position  3 to position 2. Each move has cost = 1. The total cost = 2.
//Example 3:
//
//Input: position = [1,1000000000]
//Output: 1


/*
 Phân tích đề bài:
 1 dãy n - 1 lưu vị trí của của của chip, chip i bất kì thì có vị trí position[i]
 
 //position[i] + 2 or position[i] - 2 with cost = 0.
 => nghĩa là nếu chuyển từ vị trí cách nhau 2 ko bị tính
 //position[i] + 1 or position[i] - 1 with cost = 1.
 => nếu chuyển liền kề thì bị tính 1
 
 => Chúng ta có thể chuyển tất cả chip tại vị chí chẵn về 0, và vị trí lẻ về 1 mà ko hề
    bị tính cost, vì đó đều là di chuyển 2 bước
 
 
 Lúc này ta chỉ còn 2 cột 0 và 1 và chưa tón bất cứ cost nào
 lúc Vì mỗi coin di chuyển mất 1 cost, nên chọn cột nào có ít hơn => đó là đáp án
 */
class Solution {
    func minCostToMoveChips(_ position: [Int]) -> Int {
        var totalCoinInEven = 0
        var totalCoinInOdd = 0
        for i in position.indices{
            if position[i] % 2 == 0 {
                totalCoinInEven += 1
            } else {
                totalCoinInOdd += 1
            }
        }

        return min(totalCoinInOdd, totalCoinInEven)
    }
}
let position = [1,2,3]
//Output: 1
Solution().minCostToMoveChips(position)
let position2 = [1,2,2,2,2]
Solution().minCostToMoveChips(position2)
//Output: 1
