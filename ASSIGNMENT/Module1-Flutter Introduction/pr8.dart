//Write a program to calculate sum of 5 subjects & find the
// percentage. Subject marks entered by user.
import 'dart:io';
void main(){
  stdout.write('enter  marks 0f subject1 ');
  int subject1marks = int.parse(stdin.readLineSync().toString());
  stdout.write('enter marks of subject2 ');
  int subject2marks = int.parse(stdin.readLineSync().toString());
  stdout.write('enter marks of subject3 ');
  int subject3marks =int.parse(stdin.readLineSync().toString());
  stdout.write('enter marks of subject4 ');
  int subject4marks =int.parse(stdin.readLineSync().toString());
  stdout.write('enter marks of subject5');
  int subject5marks =int.parse(stdin.readLineSync().toString());
  var sum = subject1marks+subject2marks+subject3marks+subject4marks+subject5marks;
  print('sum = $sum');
  var percentage=sum/5;
  print('percentage=$percentage');



}