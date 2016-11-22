//排列函数
#include<iostream>
#include<cmath>
using namespace std;
long fact(int n)
{
    if

}



long perm(int n , int k)
{
    if (n < 0 || k > 0 || k > n) return 0;
    return fact(n)/fact(n-k);
}
