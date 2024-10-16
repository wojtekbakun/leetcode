class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numbersScheme = {};
    //for every number
    for (int index = 0; index < nums.length; index++) {
      //subtract target from current number
      int difference = target - nums[index];

      //check if the difference is in the dictionary
      if (numbersScheme.containsKey(difference)) {
        return [numbersScheme[difference]!, index];
      }

      numbersScheme[nums[index]] = index;
    }
    return [1];
  }
}

void main() {
  Solution solution = Solution();
  print(solution.twoSum([1, 2, 3], 5));
}
