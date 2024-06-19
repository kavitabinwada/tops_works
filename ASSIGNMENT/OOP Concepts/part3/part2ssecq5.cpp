//5. Write a C++ program to create a class called Triangle that has private member variables for the lengths of its three sides. Implement member functions to determine if the triangle is equilateral, isosceles, or scalene.
#include<stdio.h>
using namespace std;
class Triangle{
private:
      double side1,side2,side3;
public: 
     Triangle(int s1,int s2,int s3){
     s1=side1;
     s2=side2;
     s3=side3;
}
     int equilateral(){
      if(side1==side2==side3)
      {     
      cout<<"it is equilateral triangle:";
      }
      else
      {
        cout<<"it is not a equilateral triangle:";
      }
   
      int isosceles(){
         if ((side1==side2)||(side1==side3)||(side3==side1))
         {
           cout<<"it is isosceles:";
         }
         else{
            cout<<"it is not aisosceles";
         }
          
      int scalane(){
         if(side1!=side2!=side3){
            cout<<"it is scalane:";
         }
         else{
            cout<<"it is not a scanale:";
         }

      int main(){
         double side1,side2,side3;
         cout<<"enter the length of three side of the triangle:";
         cin>>side1>>side2>>side3;
         
      }
      }     
      }
     }   
   
};

