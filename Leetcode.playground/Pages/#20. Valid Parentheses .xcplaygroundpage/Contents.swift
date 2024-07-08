import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }

        var charArray: [Character] = []

        for ch in s {
            switch ch {
                case "{":
                    charArray.append("}")
                case "[":
                    charArray.append("]")
                case "(":
                    charArray.append(")")
                default:
                    if charArray.isEmpty || charArray.removeLast() != ch {
                        return false
                    }
            }
        }
        return charArray.isEmpty
    }
}
