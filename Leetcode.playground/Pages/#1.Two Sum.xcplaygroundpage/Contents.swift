import Foundation

//1. Two Sum
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var table = [Int:Int]()
        for (index, value) in nums.enumerated() {
            let remainder = target - value
            if let remainderIndex = table[remainder] {
                return [remainderIndex, index]
            } else {
                table[value] = index
            }
        }
        return []
    }
}


//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        var maxProfit = 0
//        var maxPrice = 0
//        var maxDay = 0
//        for (index, buyPrice) in prices.enumerated() {
//            if index == prices.count - 1 { return maxProfit }
//            for i in index + 1 ... prices.count - 1 {
//                let sellPrice = prices[i]
//                if sellPrice > buyPrice && sellPrice > maxPrice {
//                    var profit = sellPrice - buyPrice
//                    if profit > maxProfit {
//                        maxProfit = profit
//                        maxPrice = prices[i]
//                        maxDay = i
//                    }
//                }
//                maxPrice = 0
//            }
//        }
//
//        return maxProfit
//    }
//}
