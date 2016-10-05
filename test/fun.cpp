#include<iostream>
#include<cmath>
using namespace std;
int main()

{
    double a,b,c,x1,x2,p,q,d;
    cin>>a>>b>>c;
    d=b*b-4*a*c;
    p=-b/(2.0*a);
    q=sqrt(d)/(2.0*a);
    x1=p+q;
    x2=p-q;
    if(d<0)
    {
        cout<<"This  equation is not real root = "<<endl;

    }
    else
    {
        cout<<x1<<endl;
        cout<<x2<<endl;
    }
    return 0;
}
