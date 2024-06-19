#include<iostream>
using namespace std;
int main(){
   int age;
   cout<<"enter age:";
   cin>>age;
   try{
    if(age>=18){
        cout<<"eligible to drive";
    }
    else{
        throw(age);
    }
   
}
catch(int age){
    cout<<"not access to drive avehicle"<<endl;
    cout<<"your age is:"<<age<<endl;

}
}