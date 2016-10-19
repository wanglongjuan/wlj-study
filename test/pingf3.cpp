//使用do..while循环计算并打印给定数量的平方和
#include<iostream>
using namespace std;
int main()
{
    long bound;
    cout << "Enter your bound :";
    cin >> bound ;
    int sum =0,i=1;
    do
    {
        sum +=i*i;
        cout <<"第" << i << "次的平方和为： " << sum <<endl; 
    }
    while(i++ < bound);
    cout << "数的平方和为： " << sum <<endl;
    return 0;
}
