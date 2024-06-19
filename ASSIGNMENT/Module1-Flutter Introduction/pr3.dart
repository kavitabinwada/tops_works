//write a program to make a square and cube of number.
import 'dart:io';

void main(){
  stdout.write('enter a number : ');
  var num = double.parse(stdin.readLineSync().toString());
  var square=num*num;
  var cube=num*num*num;
  print('square of this $num is $square');
  print('cube of this $num is $cube');


}