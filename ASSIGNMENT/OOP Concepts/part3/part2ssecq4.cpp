#include<iostream>
using namespace std;
class BankAccount{
private:
        int accountnumber,balance, amount;
public:
        int deposit(){
            cout<<"enter the amount:";
            cin>>amount;
            cout<<"enter the balance amount:";
            cin>>balance;
            balance=balance+amount;
            cout<<"balance is: "<<balance;

        }
        int withdraw(){
            cout<<"how much money to withdraw:";
            cin>>amount;
            balance=balance-amount;
            cout<<"balance is: "<<balance;
        } 
        int display(){
            cout<<"total balance:"<<balance<<endl;
        }
};               
int main(){
    BankAccount BA;
    BA.deposit();
    BA.withdraw(); 
}   



