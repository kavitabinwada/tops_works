// Write a Program to check the given number is Positive, Negative.

import 'dart:io';

void main() {
  stdout.write('enter a value');
  int value = int.parse(stdin.readLineSync().toString());
  print('value = $value');
  if (value > 0) {
    print('number is positive');
  }
  else if (value < 0) {
    print('number is negative');
  }
}