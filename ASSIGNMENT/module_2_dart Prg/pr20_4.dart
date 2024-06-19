//Write a program you have to find the factorial of given number.
import 'dart:io';
void main(){
  stdout.write('enter positive number:');
  var factN=int.parse(stdin.readLineSync().toString());
  var factResult=1;
  for(int i=factN;i>0;i--){
    factResult *=i;
  }
  print('Factorial of $factN=$factResult' );

}