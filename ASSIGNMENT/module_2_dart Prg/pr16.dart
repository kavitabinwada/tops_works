/* Write a program user enter the 5 subjects mark. You have to make a
 total and find the percentage. percentage > 75 you have to print
 “Distinction” percentage > 60 and percentage <= 75 you have to
 print “First class” percentage >50 and percentage <= 60 you have to
 print “Second class” percentage > 35 and percentage <= 50 you have to
 print “Pass class” Otherwise print “Fail”
 */
import 'dart:io';
void main(){
  List<int>marks=[];
  int total = 0;
  print('5 subject of marks:');
  for(int i=0;i<5;i++){
    stdout.write('enter marks for 5 subject${i+1}');
    int marks=int.parse(stdin.readLineSync()!);
    total+=marks;        //total=total+marks
    double percentage = total/5;
    print('percentage:${percentage.toStringAsFixed(2)}%');
    if(percentage>75){
      print('Distiction');
    }else if(percentage>60 && percentage<=75){
      print('first class');
    }else if(percentage>50 && percentage<=60){
      print('second class');
    }else if(percentage>35 && percentage<=50){
      print('pass class');
    }else{
      print('Fail');
    }
  }
}