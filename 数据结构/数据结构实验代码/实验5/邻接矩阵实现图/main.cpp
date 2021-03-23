#include <iostream>
#include "graphm.h"
#include "graph.h"
using namespace std;
int getNum(int n,char c,graphm<char> g)
{
	int i=0;
	for(i=0;i<n;i++)
	{
		if(g.getVex(i)==c)
		{
			break;
		}
	}
	return i;
}
int max_du(graphm<char> g,int &max)
{
	int i=0,j=0,r=0,temp=0;
	for(i=0;i<g.n();i++)
	{
		for(j=0;j<g.n();j++)
		{
			if(g.getMa(i,j)>0)
			{
				temp++;
			}
		}
		if(max<=temp) 
		{
			max=temp;r=i;
		}
		temp=0;
	}
	return r;
}
int main(int argc, char** argv) 
{
	int n,m;//n是顶点数，m是边数 
	cin>>n>>m;
	graphm<char> graph0(n);
	graph0.setType(0);
	//输入顶点信息
	char ch;
	for(int i=0;i<n;i++)
	{
		cin>>ch;
		graph0.setVex(i,ch);//将顶点输入 
	} 
	char start,end;int w,max=0;
	//初始化图，设置顶点，设置边权
	for(int j=0;j<m;j++)
	{	
		cin>>start>>end>>w;
		int s1=getNum(n,start,graph0),s2=getNum(n,end,graph0);
		graph0.setVex(s1,start);
		graph0.setVex(s2,end);
		graph0.setEdge(s1,s2,w);
	} 
	graph0.print();
	int v=max_du(graph0,max);
	cout<<graph0.getVex(v)<<" "<<max;
	return 0;
}
