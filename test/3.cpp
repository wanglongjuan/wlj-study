//有 1、2、3、4 个数字,能组成多少个互不相同且无重复数字的三位数?都是多少?
#include<iostream>
using namespace std;
int main()
{
    int i=1,j,k,count=0;
    while(i<5)
    {
        for(j=1;j<5;j++)
        {
            for(k=1;k<5;k++)
            {
                if(i !=j && j !=k && k!=i)
                {
                    count++;
                    cout<<"第"<<count<<"个"<<i*100+j*10+k<<endl;
                }

            }
     
        }
        i++;
    }
}
