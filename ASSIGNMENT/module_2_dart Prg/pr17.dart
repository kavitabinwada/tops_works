// Write Program use switch statement. Display Monday to Sunday.
import 'dart:io';
void main() {
  int? day;
  print('''
  1.Monday
  2.Tuesday
  3.Wednesday
  4.Thursday
  5.Friday
  6.Saturday
  7.Sunday
  ''');
  switch(day)
  {
  case 1:
  print('Monday');
  break;
  case 2:
  print('Tuesday');
  break;
  case 3:
  print('Wednesday');
  break;
  case 4:
  print('Thursday');
  break;
  case 5:
  print('Friday');
  break;
  case 6:
  print('Saturday');
  break;
  case 7:
  print('Sunday');
  break;
  default:
  print('invalid input');
  break;
  }
  
}