
/// Time Complexity: O(n²)
/// Space Complexity: O(1)

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var myArray: [Int] = []
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                if nums[i] + nums[j] == target {
                    myArray.append(i)
                    myArray.append(j)
                }
            }
        }
        return myArray
    }
}

// ==================== TESTS ====================
let solution = Solution()
print(solution.twoSum([2, 7, 11, 15], 9))
print(solution.twoSum([3, 2, 4], 6))
print(solution.twoSum([3, 3], 6))
