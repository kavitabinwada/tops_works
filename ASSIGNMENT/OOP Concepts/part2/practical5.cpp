#include<iostream>
using namespace std;
class rectangle{
private:
        int lenth,width;
        public:
              int getdata(int l,int w){
                lenth=l;
                width=w;
              }
              int display(){
                int area=width*lenth;
                cout<<"area is: "<<area<<endl;
                int perimeter= 2(width+lenth);
                cout<<"perimeter is: "<<perimeter<<endl;

 }
};
int main(){
    rectangle rr;
    rr.getdata(4,6);
    rr.display();
    rr.area;
    rr.perimeter;

}