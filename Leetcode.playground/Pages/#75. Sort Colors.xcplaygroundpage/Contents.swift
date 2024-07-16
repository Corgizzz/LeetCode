//class Solution {
//    func sortColors(_ nums: inout [Int]) {
//        for i in 0 ..< nums.count - 1 {
//            for j in i ..< nums.count {
//                if nums[j] < nums[i] {
//                    var temp = nums[i]
//                    nums[i] = nums[j]
//                    nums[j] = temp
//                }
//            }
//        }
//    }
//}

class Solution {
    func sortColors(_ nums: inout [Int]) {
        var zero = 0
        var one = 0
        
        for num in nums {
            if num == 0 {
                zero += 1
            } else if num == 1 {
                one += 1
            }
        }
        
        for i in 0 ..< zero {
            nums[i] = 0
        }
        
        for i in zero ..< one + zero {
            nums[i] = 1
        }
        
        for i in zero + one ..< nums.count {
            nums[i] = 2
        }
    }
}

var input = [2,0,2,1,1,0, 1]

Solution().sortColors(&input)
