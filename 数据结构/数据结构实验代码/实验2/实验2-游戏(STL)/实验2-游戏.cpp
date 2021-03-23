#include <iostream>
#include <vector>
using namespace std;
int main()
{
	int n,k;
	cin>>n>>k;
	vector<int> v;
	if(n==1)
		cout<<1<<endl;
	else
	{
		for(int j=1;j<=n;j++)
		{
			v.push_back(j);//输入编号 
		}
		int num=0;
		while(v.size()!=1)
		{
			int len=v.size();//更新数组大小 
			int length=0;
			for(int p=0;p<len;p++)
			{
				num++;
				if(num%k!=0&&num%10!=k)
					v[length++]=v[p]; 
			} 
			if(length==0)
				v[0]=v.back();//最后一个元素赋给它
			v.resize(length);//重新设置数组大小 
		} 
		cout<<v[0]<<endl; 
	}
	return 0;
} 

