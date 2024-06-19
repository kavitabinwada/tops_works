//6. Write a program to find the simple Interest.
import 'dart:io';
void main(){
stdout.write('enter principle');
int principle = int.parse(stdin.readLineSync().toString());
stdout.write('enter rate');
int rate = int.parse(stdin.readLineSync().toString());
stdout.write('enter time');
int time = int.parse(stdin.readLineSync().toString());
var simpleinterest;
simpleinterest = (principle*rate*time)/100;
print('simple interest = $simpleinterest');


}