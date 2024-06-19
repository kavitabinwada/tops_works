#include<iostream>
using namespace std;
class Lecture{
public:
string lect_name,subj_name,course_name;
int lecture_number;
public:
Lecture(){
    cout<<"enter lecture_name";
    cin>>lect_name;
    cout<<"enter subj_name";
    cin>>subj_name;
    cout<<"course_name";
    cin>>course_name;
    cout<<"enter lecture_number";
    cin>>lecture_number;
}
    int display(){
        cout<<"\n the entered lecture name is:"<<lecture_number;
        cout<<"\n the entered subj name is:"<<subj_name;
        cout<<"\n the entered course name is:"<<course_name;
        cout<<"\n the entered leture number is:"<<lecture_number;
    } 
    int add_ditails(){
        cout<<"\n  leture number :"<<lecture_number;


    } 
};
int main(){
    Lecture LL;
    
    for(int i=0;i<5;i++){
    LL.display();
    }


}