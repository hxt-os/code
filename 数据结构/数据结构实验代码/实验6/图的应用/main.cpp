#include <iostream>
#include "graphm.h"
#include "graph.h"
using namespace std;
int main(int argc, char** argv) 
{
	int n,m;//n�Ƕ�������m�Ǳ��� 
	cin>>n>>m;
	graphm<int> graph0(n);
	//���붥����Ϣ
	for(int i=0;i<n;i++)
	{
		graph0.setVex(i,i);//���������� 
	} 
	int s,e;
	//��ʼ��ͼ�����ö��㣬���ñ�Ȩ
	for(int j=0;j<m;j++)
	{	
		cin>>s>>e;
		graph0.setEdge(s-1,e-1,1);
	} 
	graph0.Warshall();
	int count=0;
	graph0.connected_all_graph(count);
	cout<<count<<"\n";
	return 0;
}
