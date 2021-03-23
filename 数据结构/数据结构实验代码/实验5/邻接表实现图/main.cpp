#include <iostream>
#include "graphl.h"
#include "graph.h"
#include "link.h" 
#include "list.h"
#include "llist.h"
using namespace std;
int getNum(char c,graphl<char> g)
{
	int i=0;
	for(i=0;i<g.n();i++)
	{
		if(g.getVex(i)==c) break;
	}
	return i;
}
int main(int argc, char** argv) 
{
	int n,m;//n�Ƕ�������m�Ǳ��� 
	cin>>n>>m;
	graphl<char> graph0(n);
	graph0.setType(0);
	//���붥����Ϣ
	char ch;
	for(int i=0;i<n;i++)
	{
		cin>>ch;
		graph0.setVex(i,ch);//���������� 
	} 
	char start,end;int w,max=0;
	//��ʼ��ͼ�����ö��㣬���ñ�Ȩ
	for(int j=0;j<m;j++)
	{	
		cin>>start>>end>>w;
		int s1=getNum(start,graph0),s2=getNum(end,graph0);
		graph0.setVex(s1,start);
		graph0.setVex(s2,end);
		graph0.setEdge(s1,s2,w);
	} 
	graph0.print();
	int v=graph0.max_du(max);
	cout<<graph0.getVex(v)<<" "<<max;
	return 0;
}
