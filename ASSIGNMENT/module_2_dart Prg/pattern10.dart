import 'dart:io';


void main(){
  int i,j,n=0;
  for(i=1;i<=5;i++){
    for(j=1;j<=i;j++){
      stdout.write('${n++} ');
    }
    print('');
  }
}