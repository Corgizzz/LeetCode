class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var ans = [Int]()
        for (index, value) in nums.enumerated() {
            ans.append(value*value)
        }
        return ans.sorted()
    }
}


var input = [-4,-1,0,3,10]
let result = Solution().sortedSquares(input)
print(result)
