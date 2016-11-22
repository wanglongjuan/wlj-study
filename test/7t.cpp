#include<iostream>
using namespace std;
long perm(int n,int k)
{
    if(n<0||k<0||k>n) return 0;
    int p=1;
    for(int i=1;i<=k;i++,n--)
        p *=n;
    return p;
}
int main()
{
    for(int i=-1;i<6;i++)
    {
        for(int j=-1;j<i+1;j++)
            cout << perm(i,j);
        cout << endl;
    }

}
