//以边绘图
#include<iostream>
using namespace std;
void square( int );

int main()
{
    int s;
    cin>>s;
    cout<<'\n';

    square( s );
    cout<<endl;
    return 0;
}
void square( int s)
{
    for(int r;r<=s;++r){
        for(int c;c<=s;++c)
            cout<<'*';
        cout<<'\n';
    }
}

