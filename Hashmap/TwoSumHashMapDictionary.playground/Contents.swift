
/// Time Complexity: O(n)
/// Space Complexity: O(n)

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
        for (index, num) in nums.enumerated() {
            let complement = target - num
            
            if let complementIndex = dict[complement] {
                return [complementIndex, index]
            }
            
            dict[num] = index
        }
        
        return []
    }
}

// ==================== TESTS ====================
let solution = Solution()
print(solution.twoSum([2, 7, 11, 15], 9))
print(solution.twoSum([3, 2, 4], 6))
print(solution.twoSum([3, 3], 6))
