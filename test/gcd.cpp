//求两个数的最大公约数，用辗转相处法
#include<iostream>
using namespace std;
int main()
{
    int m,n,a,b,t;
    cin>>m>>n;
    if(a<b)
    {
        t=a;
        a=b;
        b=t;
    }
    a=m;
    b=n;
    while(b!=0)
    {
        t=a%b;
        a=b;
        b=t;
    }
    cout<<"the answer is : "<<a<<endl;
    return 0;
}

