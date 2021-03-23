#include <iostream>
#include "graphm.h"
#include "graph.h"
using namespace std;
int main(int argc, char** argv) 
{
	int n,m;//n是顶点数，m是边数 
	cin>>n>>m;
	graphm<int> graph0(n);
	//输入顶点信息
	for(int i=0;i<n;i++)
	{
		graph0.setVex(i,i);//将顶点输入 
	} 
	int s,e;
	//初始化图，设置顶点，设置边权
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
