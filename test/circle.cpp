//C++程序，从键盘输入圆的半径，计算并显示圆的面积和周长
#include<iostream>
using namespace std;
#define Pi 3.14 //定义一个符号常量Pi来表示圆周率的值，优点是提高可读性
int main()
{
    double r;
    cin >> r;
    double s;
    s=Pi*r*r;
    cout << s << endl;
    double len;
    len=2*Pi*r;
    cout << len << endl;
    return 0;
}
