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
