#include<iostream>
using namespace std;
class Bankaccount{
char name[4],type_of_acc[30];
int acc_no,balance,amount;
public:
int get(){
    cout<<"enter account holder name: ";
    cin>>name;
    cout<<"enter type of account: ";
    cin>>type_of_acc;
    cout<<"enter account no: ";
    cin>>acc_no;
    cout<<"enter the balance: ";
}
 int deposit(){
    cout<<"enter the ammount of deposit: ";
    cin>>amount;
    balance=balance+amount;
 }
 int withdraw(){
    cout<<"the total balance is: "<<balance;
    cout<<"howmuch to withdraw: "<<amount;
    balance=balance-amount;
 }   
  int display (){
    cout<<"the name of withdraw:"<<name<<endl;
    cout<<"the final balance is:"<<balance<<endl;
}
int main(){
    Bankaccount ba;
    ba.get();
    ba.display();
    ba.deposit();
    ba.display();
    ba.withdraw();
    ba.display();

}

 
};