//class Solution {
//    func majorityElement(_ nums: [Int]) -> Int {
//        if nums.count == 1 { return nums[0 ]}
//        var table = [Int:Int]()
//        for num in nums {
//            if let aaa = table[num] {
//                table[num] = aaa + 1
//                if aaa + 1 > nums.count / 2 { return num}
//            } else {
//                table[num] = 1
//            }
//        }
//
//        for a in table {
//            if a.value > nums.count / 2 {
//                return a.key
//            }
//        }
//        return 0
//    }
//}
//
//class Solution {
//    func majorityElement(_ nums: [Int]) -> Int {
//        
//        print(nums.sorted(by: <))
//        print(nums.count/2)
//        
//        return nums.sorted(by:<)[nums.count/2]
//    }
//}
//class Solution {
//    func majorityElement(_ nums: [Int]) -> Int {
//        var count = 0
//        var candidate = 0
//        
//        for num in nums {
//            if count == 0 { candidate = num }
//            if num == candidate {
//                count += 1
//            } else {
//                count -= 1
//            }
//        }
//
//        return candidate
//    }
//}





//let input = [3,2,3]

let input = [2,2,1,1,1,2,2]

Solution().majorityElement(input)
