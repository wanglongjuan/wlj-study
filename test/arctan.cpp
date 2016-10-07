//求解arctan(x)的c++程序
#include<iostream>
using namespace std;
int main()
{
    double x;//定义变量x
    cin>>x;
    double sum=0;//定义sum,sum用来保存累加和
        int n=0;//定义数列号, 初始值为0
    double a=x;//a用来保存分子数列
    double b=1;//b用来保存分母数列
    double f;
    do
    {
        f=a/b;
        sum=((n%2==0)?sum+f:sum-f);//偶数项作减法，奇数项作加法
        n++;
        a *=x;
        b +=2;
    }
    while(f>10-5);
    cout<<sum*180/3.14<<endl;
    return 0;
}
