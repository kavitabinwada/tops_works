#include<iostream>
using namespace std;
class circle{
private:
       int radius;
    public:
      int getdata(int r){
         radius=r;
      }
         int display(){
            int area= 3.14*radius*radius;
            cout<<"area is: "<<area<<endl;
            int circumference=2*3.14*radius;
            cout<<"circumference is: "<<circumference<<endl; 
         }


};

int main(){
    circle cc;
    cc.getdata(5);
    cc.display();
}