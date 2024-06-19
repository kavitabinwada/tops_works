#include<iostream>
using namespace std;
class Employee{
    int e_id;
    char name[20];
    float salary;
public:
Employee(){
    cout<<"enter e_id:";
    cin>>e_id;
    cout<<"enter name of employee:";
    cin>>name;
    cout<<"enter salary:";
    cin>>salary;
}
int cal_sal(float p_r){
    if(p_r>=0.0 && p_r<=1.4){
        salary=salary*p_r;
        cout<<" the updated salary is:"<<salary;
    }
    else{
        cout<<"invalid rating.";
    }
}    
};
int main(){
    float p_r;
    Employee emp;
    cout<<"enter performance rating:(0.0-1.3):"<<p_r;
    cin>>p_r;
    emp.cal_sal(p_r);
}

 


