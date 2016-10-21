#include<iostream>
using namespace std;
int main()
{
    int m , n ,k=0 ;
    cout << " geidingyigezhengzhengshu : ";
    cin >> m;
    while( m > 0)
    {
        n = m%10;
        m/=10;
        k=k*10+n;
        cout << k<<endl;
    }
    cout << k << endl;
}
