#include<iostream>
#include<cmath>
using namespace std;
long fact(int n)
{
    if(n < 0 ) return 0;
    int f = 1;
    while( n > 1)
        f *= n--;
    return f;
}

long perm(int n , int k)
{
    if( n < 0 || k < 0 || k > n) return 0;
    return fact(n)/fact(n-k);
}


int main()
{
    for(int i = -1; i < 8 ; i++)
    {
        for(int j = -1; j < i ; j++)
            cout << " " << perm(i , j);
        cout << endl;
    }
}
