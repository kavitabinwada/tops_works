#include <iostream>
using namespace std;
class student

{
    public:
    char a[30];
    int roll;
    void get()
    {
        cout<<"Enter the name:"<<endl;
        cin>>a;
        cout<<"Enter the roll.n:"<<endl;
        cin>>roll;
    }
};
class mark
{
    public:
    int mark[4],i;
    void in()
    {
        cout<<"Enter the marks :"<<endl;
        for(i=0;i<4;i++)
        {
            cin>>mark[i];
        }
    }
};
class process:public student,public mark
{
    public:
    int t;
    float avg;
    void calc()
    {
        t=mark[0]+mark[1]+mark[2]+mark[3];
        avg=t/4;
    }
    void dis()
    {
        cout<<"Name:"<<a<<endl;
        cout<<"Roll.no :"<<roll<<endl;
        cout<<"Marks entered:";
        for(i=0;i<4;i++)
        {
            cout<<mark[i]<<" ";
        }
        cout<<endl;
        cout<<"Total marks:"<<t<<endl;
        cout<<"Average:"<<avg<<endl;
    }
};
int main()
{
    cout<<"Student mark list using multiple inheritance"<<endl;
    cout<<"Student mark list using multiple inheritance"<<endl;
    process v;
    v.get();
    v.in();
    v.calc();
    v.dis();
}    