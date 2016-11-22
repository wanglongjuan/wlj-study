//使用 exit() 函数中值程序
#include <iostream>
#include <cstdlib>
using namespace std;
double r(double x) ;
int main ()
{
    double x;
    cin >> x;
    cout << r(x);
}

double r(double x)
{
    if (x == 0) exit(1);
    return 1.0/x;
}
