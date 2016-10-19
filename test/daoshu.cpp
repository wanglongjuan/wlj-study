//使用while循环计算导数之和
#include<iostream>
using namespace std;
int main()
{
    int n;
    cin >> n;
    double s=0.0;
    int i=1;
    while(n>=s)
    {
        s = 1.0/i;
        i++;
        s +=s;
    }
    cout << "倒数之和为" << s; 
    return 0;
}
