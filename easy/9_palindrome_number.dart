class Solution {
  bool isPalindrome(int x) {
    int number = x;
    int reversed = 0;
    while (x != 0) {
      //get first digit
      int firstDigit = x % 10;

      //move digits to left by one and add new digit
      reversed = reversed * 10 + firstDigit;

      //remove first digit
      x ~/= 10;
    }
    print('$number -> $reversed');
    return number == reversed;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.isPalindrome(1221));
  print(solution.isPalindrome(12212));
}
