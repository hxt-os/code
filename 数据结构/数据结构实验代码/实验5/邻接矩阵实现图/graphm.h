#ifndef GRAPHM_H
#define GRAPHM_H

#include <iostream>
#include "graph.h"
#define MAX_VERTEX_NUM 40
#define UNVISITED 0
#define VISITED 1
template <typename VT> class graphm : public graph<VT> 
{
	private:
		int numVert,numEdge; //顶点数和边数
		bool undirected;        // true表示无向图 false表示有向图
		VT vexs[MAX_VERTEX_NUM]; //存储顶点信息
		int**matrix;           //指向邻接矩阵matrix
		int*mark;              //指向标记数组
	public:
		graphm(int numVert)     //构造函数
		{ Init(numVert); }
		~graphm()
		{   
			/*delete []mark; //回收动态分配内存
			for (int i=0; i<numVert; i++)
			{
				delete []matrix[i];
			}
			delete []matrix;*/
		}
		void Init(int n) //初始化图
		{ 
			int i;
			numVert =n;
			numEdge = 0;
			mark = new int[n];     // 初始化mark数组
			for (i=0;i<numVert;i++)
			{
				mark[i] =UNVISITED;	
			}
			matrix =(int**) new int*[numVert]; // 初始化邻接矩阵
			for (i=0;i<numVert; i++)
			{
				matrix[i]= new int[numVert];
			}
			for (i=0;i< numVert; i++) //Initialize to 0 weights 初始化权值为0
			{
				 for (int j=0; j<numVert; j++)
				 {
				 	matrix[i][j] = 0;
				 }
			}
		}
		int n() {return numVert; } //返回节点数
		int e() {return numEdge; }   //返回边数
		int first(int v) //返回v的第一个邻居
  		{
			for (int i=0; i<numVert; i++)
			{
				if(matrix[v][i]!= 0) return i;
			}
			return numVert;           // 如果没有邻居返回节点数
 		}
		int next(int v, int w) //返回v的在w后的邻居 
  		{
			for(int i=w+1; i<numVert; i++)
			{
				if(matrix[v][i] != 0)
					return i;
			}
			return numVert;           //如果没有邻居返回节点数
		}
		//设置图的类型（有向图或无向图）
       	void setType(bool flag)
	   	{
			undirected=flag;
		}
		void setVex(int v,VT value)//给某个顶点赋值
		{
			vexs[v]=value;
			mark[v]=VISITED;
	    }
	  	void setEdge(int v1, int v2, int wt) //设置边(v1,v2)的权值为wt
	  	{
			if(wt>0)
			{
				if(matrix[v1][v2]== 0)
					numEdge++;
				matrix[v1][v2] = wt;
				if(undirected)//判断是否为无向图 
				{
					matrix[v2][v1] = wt;
				} 
			}
	  	}
	  	void setValue(int v, int val) 
		{ mark[v] = val; }
		bool getType()//获取图的类型
		{
			return undirected;
		}
	    VT getVex(int v)//返回某个顶点的值(实际信息)
		{
			return vexs[v];
	    }
	    int getValue(int v) 
		{ return mark[v]; }
		int getMa(int i,int j)
		{
			return matrix[i][j];
		}
		void delEdge(int v1, int v2) //Delete edge (v1, v2) 删除边(v1,v2)
	 	{
	    	if(matrix[v1][v2]!= 0)//有顶点 
			{
				numEdge--;
				matrix[v1][v2] = 0;
				if(undirected)
				{
					matrix[v2][v1] = 0;
				} 
			}
		}
		bool isEdge(int i, int j) // Is(i, j) an edge? 判断边(i,j)是图中的一条边吗？
		{ return matrix[i][j] != 0; }
	  	int weight(int v1, int v2) 
		{ return matrix[v1][v2]; }
		void print()
		{
			for(int i=0;i<numVert;i++)
			{
				for(int j=0;j<numVert;j++)
				{
					std::cout<<matrix[i][j]<<" ";
				}
				std::cout<<"\n";
			}
		}
};
#endif
