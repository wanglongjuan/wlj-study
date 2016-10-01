#include<iostream>
using namespace std;
int main()
{
    int x,y;
    x=1;
    y=2;
    while(y<=5)
    {
        x=x*y;
        y=y+1;
    }
    cout<<"5的阶乘是："<<x<<endl;
    return 0;
}
