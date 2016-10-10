//关于整型的数组
#include<iostream>
using namespace std;
int main()
{
    int yams[3];//建立一个有3个元素的数组
    yams[0]=7;
    yams[1]=8;
    yams[2]=6;
    int yamscosts[3]={20,30,5};//建立初始化数组
    cout<<"Total yams= ";
    cout<<yams[0]+yams[1]+yams[2]<<endl;
    cout<<"the package with "<<yams[1]<<"yams costs";
    cout<<yamscosts[1]<<"cents per yam.\n";   
    int total=yams[0]*yamscosts[0]+yams[1]*yamscosts[1];
    total=total+yams[2]*yamscosts[2];
    cout<<"the total yam expense is : "<<total<<"cents.\n";

    cout<<"\nSize of yams array = "<<sizeof yams;
    cout<<"bytes.\n";
    cout<<"Size of one element= "<<sizeof yams[0];
    cout<<"byte.\n";
    return 0;
}

