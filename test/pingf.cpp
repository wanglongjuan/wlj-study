//使用while循环，计算并打印给定数量的平方和
#include<iostream>
using namespace std;
int main()
{
    int bound;
    cout << "输入一个数： ";
    cin >> bound;
    long i=0,sum=0;
    while(i++ < bound)
    {
        sum += i*i;
        cout << "数的平方和为： " << sum <<endl;
    }
     cout << "数的平方和为： " << sum <<endl;
    return 0;
}
