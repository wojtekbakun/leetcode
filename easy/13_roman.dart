class Solution {
  int romanToInt(String s) {
    int number = 0;

    Map<String, int> romanToIntDict = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    //reverse string
    List<String> reversedString = s.split('').toList().reversed.toList();
    print(reversedString);

    //for every numeral
    for (int i = 0; i < reversedString.length; i++) {
      int currentInt = romanToIntDict[reversedString[i]]!;

      //do not look for next letter if it is last one
      if (i != reversedString.length - 1) {
        int nextInt = romanToIntDict[reversedString[i + 1]]!;

        if (nextInt < currentInt) {
          number = number + (currentInt - nextInt);

          //go to next letter if subtraction is done
          i++;
        } else {
          number = number + currentInt;
        }
      } else {
        number = number + currentInt;
      }
    }
    print('number: $number');
    return number;
  }
}

void main() {
  Solution solution = Solution();
  solution.romanToInt('XII');
  solution.romanToInt('XDIII');
}
