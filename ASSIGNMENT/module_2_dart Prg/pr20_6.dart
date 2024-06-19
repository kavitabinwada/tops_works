//Write a program you have to print the table of given number.
import 'dart:io';
void main(){
  stdout.write('enter a number:');
  int n=int.parse(stdin.readLineSync()!);

  for(var i=1;i<=10;i++){
    print("${n}*${i}=${n*i}");
  }
}