//求 x 的倒数
#include<iostream>
using namespace std;
int main()
{
    double x;
    cin>>x;;
    if(x!=0)
    {
        double y;
        y=1/x;
        cout<<y<<endl;
    }
    else 
        cout<<"0的倒数没有意义"<<endl;
    return 0;
}
