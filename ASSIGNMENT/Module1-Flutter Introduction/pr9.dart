// Write a Program to show swap of two No's without using third variable.
import 'dart:io';
void main() {
  stdout.write('enter value of x');
  int x = int.parse(stdin.readLineSync().toString());
  stdout.write('enter value of y');
  int y = int.parse(stdin.readLineSync().toString());
  print('value of x and y before swapping the value');
  print('x = $x');
  print('y = $y');

  print('value of x and y after swapping the value');
   x=x+y;
   y=x-y;
   y=x-y;
   print('x = $x');
   print('y = $y');

}

