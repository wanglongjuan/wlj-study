//用无穷级数计算 pi的值，并打印一个表格
#include<iostream>
#include<iomanip>
using namespace std;
int main()
{
    long double pi=0.0;
    long double denom=1.0;
    long maxit = 4000000;
    cout<<fixed<<setprecision(16);
    cout<<"Accuracy set at: "<< maxit <<"\n term \t\t pi\n";

    for(long i=1; i <= maxit; i++)
    {
        long double denom = 2*i - 1;
        if(i%2!=0) {
            pi += 1.0/denom;
        }
        else 
            pi -= 1.0/denom;
        cout<< i <<"\t\t"<<4*pi<<"\n";
    }
    cout<<endl;
    return 0;
}
