import UIKit


//https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
//You are given an array prices where prices[i] is the price of a given stock on the ith day.
//
//You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
//
//Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
//
//
//
//Example 1:
//
//Input: prices = [7,1,5,3,6,4]
//Output: 5
//Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
//Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
//Example 2:
//
//Input: prices = [7,6,4,3,1]
//Output: 0
//Explanation: In this case, no transactions are done and the max profit = 0.


class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var startIndex = 0
        var endIndex = 0
        var maxProfit = 0
        while endIndex < prices.count {
            let startPrice = prices[startIndex]
            let endPrice = prices[endIndex]
            let profit = endPrice -
                startPrice
            if startPrice > endPrice {
                startIndex += 1
                
                
            } else if startPrice <= endPrice {
                endIndex += 1
                maxProfit = max(maxProfit, profit)
            }
        }
        
        return maxProfit
    }
}
let s = Solution()
s.maxProfit([7,1,5,3,6,4])
