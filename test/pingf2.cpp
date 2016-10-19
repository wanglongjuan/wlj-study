//使用for循环计算并打印给定数量的平方和
#include<iostream>
using namespace std;
int main()
{
    int bound;
    cout << "Enter your bound : ";
    cin >> bound;
    long i,sum=0;
    for(i=1;i<=bound;i++)
    {
        sum +=i*i;
        cout << "第" << i << "次的平方和为 ： " << sum  <<endl;
    }
    cout << "数的平方和为 ： " << sum  <<endl;
    return 0;
}
