//Write a program of to sort the array using templates
#include<iostream>
using namespace std;
template<typename t>
t sort_fun(t arr[],t n){
    for(int i=0;i<n-1;i++){
     for(int j=0;j<n-i-1;j++){
    if(arr[j]>arr[j+1]){
    t temp= arr[j+1];
    arr[j+1]=arr[j];
    arr[j]= temp;
    }
     } 
    }
}
template<typename t>
int parray(t arr[],int n){
    for(int i=0;i<n;i++){
        cout<<arr[i]<<" ";
        cout<<"\t";
    }
}
int main(){
    int arr[]={14,35,12,24,95};
    int size=sizeof(arr)/sizeof(arr[0]);
    cout<<"before sorting array:";
    parray(arr,size);
    sort_fun(arr,size);
    cout<<"\n after sorting array:";
    parray(arr,size);
}

