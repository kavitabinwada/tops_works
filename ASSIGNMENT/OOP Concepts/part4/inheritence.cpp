#include<iostream>
using namespace std;
class Cricketer{
public:
string name;    
};
class batsment:public Cricketer{
  public:
    int totalruns,match_played,best_performance;
    int averageruns;
    string perfomance;
  public:  
  int input(){
    cout<<"enter the name:";
    cin>>name;
    cout<<"enter total runs:";
    cin>>totalruns;
    cout<<"enter the total match played:";
    cin>>match_played;
    cout<<"enter performance:";
    cin>>best_performance;
  }
  int  cal_averageruns(){
    int cal_average=totalruns/match_played;
    cout<<"average runs are:"<<cal_average<<endl;

  }
 int display(){
    cout<<"Batsman information:"<<endl;
    cout<<"Batsman name:"<<name<<endl;
    cout<<"totalruns:"<<totalruns<<endl;
    cout<<"the best perfomance of batsman:"<<best_performance<<endl;
}
};
int main(){
    batsment B;
    B.input();
    B.cal_averageruns();
    B.display();
}
