//计算两点间的距离
#include<iostream>
#include<iomanip>
#include<cmath>
using namespace std;
double distance(double,double ,double ,double);
int main()
{
    double x1;
    double x2;
    double y1;
    double y2;
    cout<<"enter your first point : ";
    cin>>x1>>y1;
    cout<<"enter your second points : ";
    cin>>x2>>y2;
    cout<<fixed<<"distance between ("
        <<setprecision(1)<<x1<<","
        <<y1<<") and ("<<x2<<","<<y2<<") is "
        <<distance(x1,y1,x2,y2)<<endl;
    return 0;
}
double distance(double a1,double b1,double a2,double b2)
{
return sqrt(pow(a1-a2,2)+pow(b1-b2,2));
}

