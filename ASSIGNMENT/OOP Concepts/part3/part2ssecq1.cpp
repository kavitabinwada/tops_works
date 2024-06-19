#include<iostream>
using namespace std;
inline int cube(int side){return(side*side*side);}
int main(){
    int num;
    cout<<"enter the value of num:";
    cin>>num;
    cout<<"the cube of given number is:"<<cube(num)<<endl;
}
