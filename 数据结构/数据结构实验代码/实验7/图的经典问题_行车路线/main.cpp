#include <iostream>
#include "graphm.h"
#include "graph.h"
using namespace std;
#define INFINITY 9999
int minVertex(graphm<int> G,int* D) 
{ 
	  int i, v = -1;
	  for (i=0; i<G.n(); i++)
	    if (G.getValue(i) == UNVISITED) { v = i; break; }
	  for (i++; i<G.n(); i++) 
	    if ((G.getValue(i) == UNVISITED) && (D[i] < D[v]))
	      v = i;
	  return v;
}
void Dijkstra(graphm<int> G,int* D,int s) 
{
  	int i, v=s, w=0;
  	for (i=0; i<G.n(); i++) 
	{      
	    v =minVertex(G,D);
	    if (D[v] == INFINITY) return; 
	    G.setValue(v, VISITED);
	    for (w=G.first(v); w<G.n(); w = G.next(v,w))
	      if (D[w] > (D[v] + G.weight(v, w)))
	        D[w] = D[v] + G.weight(v, w);
	}
}
int main(int argc, char** argv) 
{
	int n,m;//n是路口数，m是街道数 
	cin>>n>>m;
	graphm<int> graph0(n);
	graph0.setType(1);
	for(int i=0;i<n;i++)
	{
		graph0.setVex(i,i+1);//将顶点输入 
	} 
	int type, start,end,w;
	//初始化图，设置顶点，设置边权
	for(int j=0;j<m;j++)
	{	
		cin>>type>>start>>end>>w;
		graph0.setVex(start-1,start);
		graph0.setVex(end-1,end);
		if(!type)
			graph0.setEdge(start-1,end-1,w);
		else
			graph0.setEdge(start-1,end-1,w*w);
	} 
	graph0.print();
	int D[graph0.n()];
	D[0]=0;
	for(int i=1;i<n;i++)
		D[i]=INFINITY;
	Dijkstra(graph0,D,0);
	for(int i=0;i<n;i++)
	{
		cout<<D[i]<<" ";
	}
	cout<<D[n-1];
	return 0;
}
