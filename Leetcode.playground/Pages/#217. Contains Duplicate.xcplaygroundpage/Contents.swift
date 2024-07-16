//class Solution {
//    func containsDuplicate(_ nums: [Int]) -> Bool {
//        if nums.count == 1 { return false }
//        var table = [Int: Int]()
//
//        for num in nums {
//            if let a = table[num] {
//                return true
//            } else {
//                table[num] = 1
//            }
//        }
//
//        return false
//
//    }
//}

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        if nums.count == 1 { return false }
        let sortedNums = nums.sorted(by: <)
        for i in 0 ..< sortedNums.count - 1 {
            if sortedNums[i] == sortedNums[i+1] {
                return true
            }
        }
        return false
    }
}

//let input = [1,2,3,1]
//let input = [1,2,3,4]
//let input = [1,1,1,3,3,4,3,2,4,2]

let result = Solution().containsDuplicate(input)
