//Write a program to find the Max number from the given three
//number using Nested If.
import 'dart:io';
void main() {
  stdout.write('enter a value of x');
  int x = int.parse(stdin.readLineSync().toString());
  stdout.write('enter a value y');
  int y = int.parse(stdin.readLineSync().toString());
  stdout.write('enter a value z');
  int z = int.parse(stdin.readLineSync().toString());
  if (x > y && x > z) {
    print('maximum number is x:$x');
  }
  else if (y > x && y > z) {
    print('maximum number is y:$y');
  }
  else {
    print('maximum number is z:$z');
  }
}

