import 'dart:io';
void main(){
  int i,j,k;
  for(int i=1;i<=5;i++){
    for(int k=4;k>=i;k--){
      stdout.write(' ');
    }
    for(int j=i;j>=1;j--){
      stdout.write(j);
    }
    print('');
  }
}
