// Write a program to find the Max number from the given three
// number using Nested if
import 'dart:io';

void main(){
  stdout.write('enter a value n1');
  int n1 = int.parse(stdin.readLineSync().toString());
  stdout.write('enter a value n2');
  int n2= int.parse(stdin.readLineSync().toString());
  stdout.write('enter a value n3');
  int n3 = int.parse(stdin.readLineSync().toString());
  if(n1>n3 && n1>n2) {
    print('maximum number is n1');
  }
    else if(n2>n1 && n2>n3) {
    print('maximum number is n2');
  }
    else{
      print('maximum number is n3');

  }
}

