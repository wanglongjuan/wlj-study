//自定义函数
#include<iostream>
using namespace std;
int max(int x , int y)
{
    if (x < y) return y;
    else return x;
}

int main()
{
    int m,n;
    do
    {
        cin >> m >> n;
        cout << "\tmax("<< m << ","<< n <<")= "<< max(m,n)<<endl;
    }
    while(m != 0);
}
