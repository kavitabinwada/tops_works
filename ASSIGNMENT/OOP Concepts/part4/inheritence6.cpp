#include <iostream> 
using namespace std; 
  class Base { 
private: 
    int pvt = 1; 
  
protected: 
    int prot = 2; 
  
public: 
    int pub = 3; 
  
    int getPVT()
    { return pvt; } 
}; 
  
class PublicDerived : public Base { 
public: 
    int getProt() 

}; 
  
int main() 
{ 
    PublicDerived PD; 
    cout << "Private = " << PD.getPVT() << endl; 
    cout << "Protected = " << PD.getProt() << endl; 
    cout << "Public = " << PD.pub << endl; 

}