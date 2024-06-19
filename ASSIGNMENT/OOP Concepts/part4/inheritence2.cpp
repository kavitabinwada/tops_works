#include<iostream>
using namespace std;
class Area{
public:
int length,width;
public:
int cal_area(){
    int result= length*width;
    cout<<"the area is:"<<result<<endl;
}    

};
class Rectangle{
    public:
    int getdata(){
        cout<<"enter length:";
        cin>>length;
        cout<<"enter width:";
        cin>>width;
    }

};
int main(){
 Rectangle r;
 r.getdata();
 r.cal_area();   
}