//使用循环计算并存储前16的阶乘
#include<iostream>
using namespace std;
int main()
{
    double f[16];
    f[0]=f[1]=1;//数组的第一个元素索引值为0
    for(int i=1;i<16;i++)
        f[i]=i*f[i-1];//程序将每个阶乘设置为索引号与前一个阶乘的乘积
    for(int i=0;i<16;i++)
        cout<<i<<" != "<<f[i]<<endl;//用来显示结果
    return 0;
}

