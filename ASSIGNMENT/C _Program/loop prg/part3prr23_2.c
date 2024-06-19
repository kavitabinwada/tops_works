#include<stdio.h>
int main(){
    int start,end=5,sum=0;
    for(start=1;start<=end;start++){
        if(start!=end){
            printf("(%d * %d)+",start,start);
        }
    else{
     printf("(%d * %d)+",start,start);   
    }
    sum+=(start*start);
}
printf("%d",sum);
}
