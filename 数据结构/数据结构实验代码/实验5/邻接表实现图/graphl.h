#ifndef GRAPHL_H
#define GRAPHL_H

#include <iostream>
#include <cstring>
#include "graph.h"
#include "link.h" 
#include "list.h"
#include "llist.h"
#define MAX_VERTEX_NUM 40
#define UNVISITED 0
#define VISITED 1
class Edge //边类，用做链表元素
{
	private:
  		int vert, wt;
	public:
		Edge() { vert= -1; wt = -1; }
		Edge(int v,int w) { vert = v; wt = w; }
		int vertex() {return vert; }
		int weight() {return wt; }
};
/*实现邻接表是通过一个结构体数组来实现的，结构体包括顶点值和一个边的链表
边包括权值和点值，可以用类或者结构体来实现*/ 
template <typename VT> class graphl : public graph<VT> 
{
	private:
		struct graphlist
		{
			VT date;
			llist<Edge>* vl;
		};
		int numVert,numEdge; //顶点数和边数
		bool undirected;     // true表示无向图 false表示有向图
		int*mark;            //指向标记数组
		graphlist* gl;       //存储信息的结构体数组 
	public:
		graphl(int numVert)     //构造函数
		{ Init(numVert); }
		~graphl()
		{   
			/*delete [] mark; 
    		delete [] gl; */
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
			gl=new graphlist[numVert]; // 创建邻接表 结构体数组 
			for (i=0;i< numVert; i++) //初始化权值为0
			{
				 gl[i].vl=new llist<Edge>();
			}
		}
		int n() {return numVert; } //返回节点数
		int e() {return numEdge; }   //返回边数
		int first(int v) //返回v的第一个邻居
  		{
			if(gl[v].vl->length()==0)
			{
				return numVert;	
			} 
			gl[v].vl->moveToStart();
			int m=gl[v].vl->currPos();
			Edge it=gl[v].vl->getValue(m);
			return it.vertex();
 		}
		int next(int v, int w) //返回v的在w后的邻居 
  		{
  			Edge it;
			if(isEdge(v,w))
			{
				if((gl[v].vl->currPos()+1)<gl[v].vl->length())
				{
					gl[v].vl->next();
					int m=gl[v].vl->currPos();
					it=gl[v].vl->getValue(m);
					return it.vertex();
				}
			}	return n();//没有邻居 
		}
		//设置图的类型（有向图或无向图）
       	void setType(bool flag)
	   	{
			undirected=flag;
		}
		void setVex(int v,VT value)//给某个顶点赋值
		{
			gl[v].date=value; 
			mark[v]=VISITED;
	    }
	  	void setEdge(int v1, int v2, int wt) //设置边(v1,v2)的权值为wt
	  	{
			if(wt>0)
			{
				Edge currEdge(v2,wt);
				if(isEdge(v1,v2))
				{
					gl[v1].vl->remove();
					gl[v1].vl->insert(currEdge);
				}
				else
				{
					numEdge++;
					for(gl[v1].vl->moveToStart();gl[v1].vl->currPos()<gl[v1].vl->length();gl[v1].vl->next())
					{
						int m=gl[v1].vl->currPos();
						Edge t=gl[v1].vl->getValue(m);
						if(t.vertex()>v2) break;
					}
					gl[v1].vl->insert(currEdge);
					//如果是无向图还需要在交换v1,v2位置，进行插入 
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
			return gl[v].date;
	    }
	    int getValue(int v) 
		{ return mark[v]; }
		int getMa(int i,int j)
		{
			Edge it;
			if(isEdge(i,j))
			{
				return it.weight();
			}
		}
		void delEdge(int v1, int v2) //Delete edge (v1, v2) 删除边(v1,v2)
	 	{
	    	if (isEdge(v1,v2)) 
			{
				gl[v1].vl->remove();
				numEdge--;
			}
		}
		bool isEdge(int i, int j) // Is(i, j) an edge? 判断边(i,j)是图中的一条边吗？
		{ 
			Edge it;
			for (gl[i].vl->moveToStart();gl[i].vl->currPos() <gl[i].vl->length();gl[i].vl->next())
			{         
				int m=gl[i].vl->currPos();
				Edge t=gl[i].vl->getValue(m);
				if (t.vertex() ==j) return true;
			}
			return false;
		}
	  	int weight(int v1, int v2) 
		{
			Edge it;
			if(isEdge(v1,v2))
			{
				return it.weight();
			}
			else return 0;
		}
		void print()
		{
			int p[numVert][numVert];
			memset(p,0,sizeof(p));
			for(int i=0;i<numVert;i++)
			{
				for (gl[i].vl->moveToStart();gl[i].vl->currPos()<gl[i].vl->length();gl[i].vl->next())
				{
					if(gl[i].vl!=NULL)
					{
						int m=gl[i].vl->currPos();
						Edge it=gl[i].vl->getValue(m);
						p[i][it.vertex()]=1;
					}
				}
			} 
			for(int i=0;i<numVert;i++)
			{
				for(int j=0;j<numVert;j++)
				{
					std::cout<<p[i][j]<<" ";
				}
				std::cout<<"\n";
			}
		}
		int max_du(int &max)
		{
			int i=0,r=0;
			for(i=0;i<numVert;i++)
			{
				if(max<=gl[i].vl->length())
				{
					max=gl[i].vl->length();
					r=i;
				}
			} 
			return r;
		}
};
#endif
