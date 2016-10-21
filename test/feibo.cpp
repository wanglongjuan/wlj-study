//计算斐波納契
#include<iostream>
using namespace std;
int main()
{
    long bound;
    cout << "Enter your bound : ";
    cin >> bound;
    long f0=0,f1=1;
    while(true)
    {
        long f2=f0+f1;
        if(f2>bound) break;
        cout << "斐波納契数为： " << f2 << endl; 
        f0=f1;
        f1=f2;
    }
    return 0;
}
