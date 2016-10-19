//计算数的阶乘
#include<iostream>
using namespace std;
int main()
{
    long bound;
    cout << "Enter your bound: ";
    cin >> bound;    
    cout << "数的阶乘： 1 \n";
    long f=1,i=1; 
    while(f<bound)
    {
        f *=++i;
        cout << "数的阶乘： " << f <<endl ;
    }
    return 0;
}
