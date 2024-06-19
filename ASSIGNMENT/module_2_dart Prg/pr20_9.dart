//Write a program make a summation of given number
// (E.g. 1523 ans :- 11)
import 'dart:io';
void main(){
  stdout.write('enter the N');
  int N = int.parse(stdin.readLineSync()!);
  int result=0;
  for(int i=N;i>0;i=(i/10).floor()){
    result+=(i%10);
  }
  print('summation of digits:$result');
}

