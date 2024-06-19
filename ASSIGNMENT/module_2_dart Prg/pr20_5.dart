//fibonacci
import 'dart:io';
void main(){
  stdout.write('enter a number to print fibonacci series:');
  int fibN = int.parse(stdin.readLineSync().toString());
  int first = 0;
  int second = 1;
  int next;
  print('fibonicci series upto $fibN:');
  stdout.write('$first\t$second\t');
  for( int i=1;i<=fibN-2;i++){
    next=first+second;
    first=second;
    second=next;
    stdout.write('$next\t');
  }
}

