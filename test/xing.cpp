//使用for 嵌套，打印菱形，珊瑚初语句打印 * 号
#include<iostream>
using namespace std;
int main()
{
    for(int row=1;row<=5;++row)
    {
        for(int space=1;space<=5-row;++space)
            cout<<' ';
        for(int asterisk=1;asterisk<=2*row-1;++asterisk)
            cout<<'*';
        cout <<'\n';
    }
    for(int row=4;row>=1;--row)
    {
        for(int space=1;space<=5-row;++space)
            cout<<' ';
        for(int asterisk=1;asterisk<=2*row-1;++asterisk)
            cout<<'*';
        cout<<'\n';
    }
    cout <<endl;
    return 0;
}
