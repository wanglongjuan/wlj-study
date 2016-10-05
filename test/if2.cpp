//求符号函数的C++程序
#include<iostream>
using namespace std;
int main()
{
    float x;//定义一个float型的变量x
    cin>>x;
    int sgn;
    if(x==0)
        sgn=0;
    else
    {
        if(x<0)
            sgn=-1;
        else
            sgn=1;
    }
     cout<<sgn<<endl;
    return 0;
}
