//测试素数的函数
#include<cmath>
#include<iostream>
#include<cctype>
using namespace std;
bool isprime(int n)
{
    float sqrtn= sqrt(n);
    if (n < 2) return false;
    if ( n < 4 ) return true;
    if ( n % 2 ==0 ) return false;
    for ( int d = 3 ; d < sqrtn ; d++)
        if( n % d == 0 ) return false;
    return true;
}

int main()
{
    for( int n = 0;n < 80 ; n++)
        if (isprime(n)) cout << n << " ";
    cout << endl;
}
