//c++:键盘输入一个数值，计算其平方根
#include<iostream>
using namespace std;
int main()
{
    int x;
    cin >> x;
    /*
     cout << x*x << endl ;
     */
    int *p=&x; //定义一个指针变量p，初始化指向变量x
    cout << (*p)*(*p) << endl;//改用间接访问*p来计算并显示x*x的值
                             //间接访问*p所读出的数据就是变量x的值
    return 0;
}
