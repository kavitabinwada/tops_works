#include<iostream>
using namespace std;
template<typename T>
int Swap_numbers(T&x,T&y)
{
int z=x;
x=y;
y=z;
return 0;
}
int main(){
    int a,b;
    a=10,b=20;
    Swap_numbers(a,b);
    cout<<a<<" "<<b<<endl;
}
