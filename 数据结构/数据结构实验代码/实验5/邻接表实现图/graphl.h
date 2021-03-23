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
class Edge //���࣬��������Ԫ��
{
	private:
  		int vert, wt;
	public:
		Edge() { vert= -1; wt = -1; }
		Edge(int v,int w) { vert = v; wt = w; }
		int vertex() {return vert; }
		int weight() {return wt; }
};
/*ʵ���ڽӱ���ͨ��һ���ṹ��������ʵ�ֵģ��ṹ���������ֵ��һ���ߵ�����
�߰���Ȩֵ�͵�ֵ������������߽ṹ����ʵ��*/ 
template <typename VT> class graphl : public graph<VT> 
{
	private:
		struct graphlist
		{
			VT date;
			llist<Edge>* vl;
		};
		int numVert,numEdge; //�������ͱ���
		bool undirected;     // true��ʾ����ͼ false��ʾ����ͼ
		int*mark;            //ָ��������
		graphlist* gl;       //�洢��Ϣ�Ľṹ������ 
	public:
		graphl(int numVert)     //���캯��
		{ Init(numVert); }
		~graphl()
		{   
			/*delete [] mark; 
    		delete [] gl; */
		}
		void Init(int n) //��ʼ��ͼ
		{ 
			int i;
			numVert =n;
			numEdge = 0;
			mark = new int[n];     // ��ʼ��mark����
			for (i=0;i<numVert;i++)
			{
				mark[i] =UNVISITED;	
			}
			gl=new graphlist[numVert]; // �����ڽӱ� �ṹ������ 
			for (i=0;i< numVert; i++) //��ʼ��ȨֵΪ0
			{
				 gl[i].vl=new llist<Edge>();
			}
		}
		int n() {return numVert; } //���ؽڵ���
		int e() {return numEdge; }   //���ر���
		int first(int v) //����v�ĵ�һ���ھ�
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
		int next(int v, int w) //����v����w����ھ� 
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
			}	return n();//û���ھ� 
		}
		//����ͼ�����ͣ�����ͼ������ͼ��
       	void setType(bool flag)
	   	{
			undirected=flag;
		}
		void setVex(int v,VT value)//��ĳ�����㸳ֵ
		{
			gl[v].date=value; 
			mark[v]=VISITED;
	    }
	  	void setEdge(int v1, int v2, int wt) //���ñ�(v1,v2)��ȨֵΪwt
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
					//���������ͼ����Ҫ�ڽ���v1,v2λ�ã����в��� 
				}
			}
	  	}
	  	void setValue(int v, int val) 
		{ mark[v] = val; }
		bool getType()//��ȡͼ������
		{
			return undirected;
		}
	    VT getVex(int v)//����ĳ�������ֵ(ʵ����Ϣ)
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
		void delEdge(int v1, int v2) //Delete edge (v1, v2) ɾ����(v1,v2)
	 	{
	    	if (isEdge(v1,v2)) 
			{
				gl[v1].vl->remove();
				numEdge--;
			}
		}
		bool isEdge(int i, int j) // Is(i, j) an edge? �жϱ�(i,j)��ͼ�е�һ������
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
