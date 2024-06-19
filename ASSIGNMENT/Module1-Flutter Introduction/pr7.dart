// Write a program to convert temperature from degree centigrade to
// Fahrenheit.
import 'dart:io';
void main(){
  stdout.write('enter celsius');
  int celsius = int.parse(stdin.readLineSync().toString());
  var fahrenheit = celsius*1.8+32;
  print('fahrenheit = $fahrenheit');


}