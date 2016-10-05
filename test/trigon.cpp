//输入3个double 类型的值，判断这三个值是否构成三角形
#include<iostream>
using namespace std;
int main()
{
    double a,b,c;
    cin>>a>>b>>c;
    if(a+b>c && a+c>b && b+c>a)
        cout<<"可以构成三角形"<<endl;
    else
        cout<<"不能构成三角形"<<endl;
    return 0;
}
