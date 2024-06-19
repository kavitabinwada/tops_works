#include<iostream>
using namespace std;
class Date{
    int day,month,year;
    public:
      Date(int d,int m,int y):
      day(d),
      month(m),
      year(y)
      {}
      int setdate(int d,int m,int y){
        day= d;
        month= m;
        year= y;
      }
      int getDay()const{
        return day;
      }
      int getMonth()const{
        return month;
      }
      int getYear()const{
        return year;
      }
      int valid_date(){
        if(day>=1 || day<=31){
            cout<<"day is:"<<day;
        }
        if (month>=1 ||month<= 12){
            cout<<"month is:"<<month;
        }
        if((month == 4||month == 6||month == 9||month==11)){
            cout<<"this month have 30 days";
        }
        if(month == 2){
            if((year %4 ==0 && year %100!=0)||(year% 400 ==0))
        }if(day > 29){
        cout<<"its a leap year.";}
      }
      else
        if(day > 28){
        cout<<"it is not a leap year. ";
      }
}
}
};
int main(){
    int day,month,year;
    Date date(0,0,0);
    cout<<"enter day:";
    cin>>day;
    cout<<"enter month:";
    cin>>month;
    cout<<"enter year:";
    cin>>year;
    date.setdate(day,month,year);
    cout<<"Date:"<<date.getDay()<<"/"<<date.getMonth()<<"/"<<date.getYear()<<"/";
    if(date.valid_date())
    cout<<"\n The date is valid."<<endl;
    else
    cout<<"the date is invalid."endl;
}
    return 0;
}
