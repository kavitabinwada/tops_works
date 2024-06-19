//accept 5 numbers from user and perform sum of array.
#include<stdio.h>
int main(){
    int arr[5],i,sum=0;
    printf("enter five numbers:");
    for(i=0;i<5;i++){
        scanf("%d",&arr[i]);
    }
    for(i=0;i<5;i++){
        sum=sum+arr[i];
        printf("\nthis is the sum=%d",sum);
    }

}
