#include<iostream>
using namespace std;
#define pi 3.14
class fn
{
      public:
        void area(int); 
        void area(int,int); 
        void area(float ,int,int);  
};
  
void fn::area(int a)
{
      cout<<"Area of Circle:"<<pi*a*a;
}
void fn::area(int a,int b)
{
      cout<<"Area of rectangle:"<<a*b;
}
void fn::area(float t,int a,int b)
{
      cout<<"Area of triangle:"<<t*a*b;
}
  
int main()
{
     int ch;
     int a,b,r;
     fn obj;
     cout<<"\nFunction Overloading";
     cout<<"1.Area of Circle\n2.Area of Rectangle\n3.Area of Triangle\n4.Exit\n:";
     cout<<"\n Enter your Choice:";
     cin>>ch;
  
     switch(ch)
     {
              case 1:
                cout<<"Enter Radious of the Circle:";
                cin>>r;
                obj.area(r);
                break;
              case 2:
                cout<<"Enter Sides of the Rectangle:";
                cin>>a>>b;
                obj.area(a,b);
                break;
              case 3:
                cout<<"Enter Sides of the Triangle:";
                cin>>a>>b;
                obj.area(0.5,a,b);
                break;
              case 4:
                exit(0);
     }

}

