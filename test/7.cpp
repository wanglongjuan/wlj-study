//默认参数
#include<iostream>
#include<cmath>
using namespace std;
int min(int n1,int n2,int n3,int n4 )
{
    int min = n1;
    if(n1 > n2) min=n2;
    if(n2 > n3) min=n3;
    if(n3 > n4) min=n4;
    return min;
}

int main ()
{
    int x,y,k,w;
    cin >> x >> y >> k >> w ;
    cout << min(x , y , k , w) << endl;
}

               
