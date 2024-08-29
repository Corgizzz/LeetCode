class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        for i in 0 ..< nums.count {
            if nums[i] != 0 {
                nums[index] = nums[i]
                index += 1
            }
        }
        for j in index ..< nums.count {
            nums[j] = 0
        }
    }
}

var input = [0,1,0,3,12]
//var input = [0,0,1]

Solution().moveZeroes(&input)
print(input)
