#include<iostream>
using namespace std;
class person{
    private:
           int name,age,country;
        public:
          int getdata(string n,int a,string c){
          cout<<"name is: "<<name<<endl;
          cout<<"age is: "<<age<<endl;
          cout<<"country: "<<country<<endl;


          }
};
int main(){
    int setdata(){
        cout<<"name"<<name<<endl;
        cout<<"age"<<age<<endl;
        cout<<"country"<<country<<endl;
    }
}