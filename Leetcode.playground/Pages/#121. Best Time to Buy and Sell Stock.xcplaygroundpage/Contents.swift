import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 1 { return 0 }
        var maxProfit = 0
        var buyPrice = 1000001
        for price in prices {
            if price < buyPrice {
                buyPrice = price
            } else {
                maxProfit = max(maxProfit, price - buyPrice)
            }
        }
        return maxProfit
    }
}
