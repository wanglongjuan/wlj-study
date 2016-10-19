//有一分数序列:2/1,3/2,5/3,8/5,13/8,21/13...求出这个数列的前 20 项之和。
#include<iostream>
#include<vector>
using namespace std;
int main()
{
    vector<double> a(20);
    vector<double> b(20);
    double s;
    a[1]=2;
    b[1]=1;
    s=a[1]/b[1];
    for(int i=2 ; i<=20;i++)
    {
        a[i]=a[i-1]+b[i-1];
        b[i]=a[i-1];
        s=s+a[i]/b[i];
    }
    cout<<"数列之和为： "<<s<<endl;
    return 0;
}

