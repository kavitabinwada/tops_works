//Write a program  to find out the Area of Triangle, Rectangle and
// Circle using If Condition.(Must Be Menu Driven)
import 'dart:io';
import 'dart:math';
void main(){
  stdout.write('enter number to find:\n1.Area\n2.Triangle\n3.Rectangle\n'
      '4.circle');
  var option=int.parse(stdin.readLineSync().toString());
  switch(option){
    case 1:
      stdout.write('for Triangle\nenter height:');
      var height=double.parse(stdin.readLineSync().toString());
      stdout.write('enter base:');
      var base=double.parse(stdin.readLineSync().toString());
      print('Area of triangle:${0.5*base*height}');
      break;
    case 2:
      stdout.write('for Rectangle\nenter Length:');
      var length=double.parse(stdin.readLineSync().toString());
      stdout.write('enter breadth:');
      var breadth=double.parse(stdin.readLineSync().toString());
      break;
    case 3:
      stdout.write('for circle:\nenter radius:');
      var radius=int.parse(stdin.readLineSync().toString());
      print('Area of circle:${(pi*pow(radius,2)).toStringAsFixed(2)}');
      break;
    default:
      print('enter valid option number');
      break;
  }
}