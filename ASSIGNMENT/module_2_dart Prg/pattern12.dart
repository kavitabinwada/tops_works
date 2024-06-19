import 'dart:io';
import 'dart:math';


void main(){
  int i,j;
  for(i=1;i<=5;i++){
    for(j=1;j<=i;j++){
      stdout.write('${pow(i,2)} ');
    }
    print('');
  }
}