#include<iostream>
using namespace std;
class Student{
private:
string name,clname;
int rollno,marks;
public:
Student(string &stname,string &clnm,int roll_no,int marks),
name(stname),
clname(clnm),
rollno(roll_no),
marks(marks1){}
};
string grade(){
if (marks>=90){
    return "A+";
} 
else if(marks>=75 && marks<=80){
    return "A";
}    
else if(marks>=60 && marks<50){
    return "B";
}    
else if(marks>=50 && marks<=40){
    return "c";
}
else{
    return "D";
}    
int display(){
    cout<<"student information:"<<endl;
    cout<<"the rollno is:"<<rollno<<endl;
    cout<<"name is:"<<name<<endl;
    cout<<"class name"<<clname<<endl;
    cout<<"marks:"<<marks<<endl;
    cout<<"grade is:"<<grade()<<endl;
}
};
int main(){
    int rollno,marks;
    string name,clname;
    cout<<"enter rollno:";
    cin>>rollno;
    cout<<"enter name:";
    cin>>name;
    cout<<"enter class name:";
    cin>>clname;
    cout<<"enter marks:";
    cin>>marks;
    Student s(name, clname,rollno ,marks);
    s.display();
}