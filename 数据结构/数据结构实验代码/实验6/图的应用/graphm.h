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
		int matrix[MAX_VERTEX_NUM][MAX_VERTEX_NUM];           //指向邻接矩阵matrix
		int*mark;              //指向标记数组
		VT vex; //存储顶点信息
	public:
		graphm(int numVert)     //构造函数
		{ Init(numVert); }
		~graphm(){}
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
		void setVex(int v,VT value)//给某个顶点赋值
		{
			vex=value;
	    }
	  	void setEdge(int v1, int v2, int wt) //设置边(v1,v2)的权值为wt
	  	{
			if(matrix[v1][v2]== 0)
				numEdge++;
			matrix[v1][v2] = wt;
	  	}
	  	void setValue(int v, int val) 
		{ mark[v] = val; }
	    VT getVex(int v)//返回某个顶点的值(实际信息)
		{
			return vex;
	    }
	    int getValue(int v) 
		{ return mark[v]; }
		void delEdge(int v1, int v2) //Delete edge (v1, v2) 删除边(v1,v2)
	 	{
	    	if(matrix[v1][v2]!= 0)//有顶点 
			{
				numEdge--;
				matrix[v1][v2] = 0;
			}
		}
		bool isEdge(int i, int j) // Is(i, j) an edge? 判断边(i,j)是图中的一条边吗？
		{ return matrix[i][j] != 0; }
	  	int weight(int v1, int v2) 
		{ return matrix[v1][v2]; }
		void print()
		{
			for(int i=0;i<this->n();i++)
			{
				for(int j=0;j<this->n();j++)
				{
					std::cout<<matrix[i][j]<<" ";
				}
				std::cout<<"\n";
			}
		}
		void Warshall()
		{
			for(int c=0;c<numVert;c++)
			{
				for(int r=0;r<numVert;r++)
				{
					if(matrix[r][c]) 
					{
						for(int k=0;k<numVert;k++)
						{
							matrix[r][k]|=matrix[c][k];
						}
					}	
				}	
			}
		}
		void connected_all_graph(int &s)
		{
			bool flag=1;
			for(int k=0;k<numVert;k++)
			{
				matrix[k][k]=1;
			}
			this->print();
			std::cout<<"\n";
			for(int i=0;i<numVert;i++)
			{
				flag=1;
				for(int j=0;j<numVert;j++)
				{
					if(!(matrix[i][j]||matrix[j][i]))
					{
						flag=0;break;
					}
				}
				if(flag)
				{
					s++;
				}
			}
		}
};
#endif
