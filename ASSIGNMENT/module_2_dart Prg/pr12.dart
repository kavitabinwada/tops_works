// Write a Program to check the given number is prime or not prime.
import 'dart:io';

void main() {
  stdout.write('enter a value of number :');
  var number = int.parse(stdin.readLineSync().toString());
  bool flag = false;
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      flag = false;
      break;
    }
    else {
      flag = true;
    }
  }
  if (flag == true) {
    print('number is prime number');
  }
  else {
    print('number is not a prime number');
  }
}

  





