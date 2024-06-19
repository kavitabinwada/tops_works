//write aprogram of addition,subtraction,multiplication,division using contructor
#include<iostream>
using namespace std;
class Operation{
public:
     int num1,num2;
     public:
         Operation(){
            cout<<"enter two numbers: ";
            cin>>num1>>num2;
         }
             void Addition(){
                cout<<"Addition= "<<num1+num2<<endl;
                }
                 void Subtraction(){
                    cout<<"Subtraction= "<<num1-num2<<endl;
                 }
                    void Multiplication(){
                        cout<<"Multiplication= "<<num1*num2<<endl;
                    }
                        void Division(){
                            cout<<"Division= "<<num1/num2<<endl;
                        }
};
int main(){
    Operation op;
    cout<<"calling the input function from main function: "<<endl;
    op.Addition();
    cout<<"calling the addition function from main function: "<<endl;
    op.Subtraction();
    op.Multiplication();
    op.Division();
}

