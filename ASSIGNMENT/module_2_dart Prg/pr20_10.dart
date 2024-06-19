//Write a program you have to make a summation of first and last Digit.
//(E.g. 1234 ans:-5)
import 'dart:io';
void main(){
  stdout.write('enter a number:');
  int number=int.parse(stdin.readLineSync()!);
  int firstDigit = getFirstDigit(number);
  int lastDigit = getLastDigit(number);

  int sum = firstDigit+lastDigit;
  print('sum of first and last digit:$sum');

}
int getFirstDigit(int number){
  while(number>=10){
    number~/=10;
  }
  return number;
}
int getLastDigit(int number){
  return number%10;
}
