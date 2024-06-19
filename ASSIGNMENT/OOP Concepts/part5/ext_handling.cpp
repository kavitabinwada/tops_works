#include<iostream>
using namespace std;
int main(){
    int x,y,z;
    cout<<"enter number x:";
    cin>>x;
    cout<<"enter number y:";
    cin>>y;
    cout<<"enter number z:";
    cin>>z;
    try{
        if((x-y)!=0){
            int r=z/(x-y);
            cout<<"the result is:"<<r<<endl;
        }
        else{
            throw(x-y);
        }
    }
    catch(int r){
        cout<<"infinite result of x-y:"<<r<<endl;

    }

}