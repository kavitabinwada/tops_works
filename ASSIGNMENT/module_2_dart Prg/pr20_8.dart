//Write a program to find out the max from given number (E.g. No: -1562
//max number is 6.
import 'dart:io';
void main() {
  

  var number = [76, 67, 98, 65, 77, 86];
  var MaxNumber = number[0];
  for (int i = 0; i < number.length; i++) {
    if (number[i] > MaxNumber)
      MaxNumber = number[i];
  }

print('MaxNumber is :$MaxNumber');
}