#include<iostream>
using namespace std;
int main()
{
    for(int i=1;i<=5;++i)
    {
        for(int j=1;j<=5;++j)
            cout<<' ';
        for(int k=1;k<=2*i-1;++k)
            cout<<'&';
        cout<<'\n';
    }
    return 0;
    cout<<endl;
}
