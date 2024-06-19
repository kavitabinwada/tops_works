#include<stdio.h>
int main(){
    float start,end=10,sum=0;
    for(start=1;start<=end;start++){
        if((int)start%2==1){
            sum+=start/(start+1);
        }
        else{
            sum-=start/(start+1);
        }
    }
    printf("%f",sum);
}