import 'dart:math';

String binaryToDecimal(String x) {
  int length = x.length - 1;
  int result = 0;

  for (String digit in x.split("")) {
    // Calculate the contribution of the current digit to the result using the pow function
    result = result + int.parse(digit) * (pow(2, length) as int);
    length--;
  }

  return result.toString();
}
