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
		int numVert,numEdge; //�������ͱ���
		bool undirected;        // true��ʾ����ͼ false��ʾ����ͼ
		int matrix[MAX_VERTEX_NUM][MAX_VERTEX_NUM];           //ָ���ڽӾ���matrix
		int*mark;              //ָ��������
		VT vex; //�洢������Ϣ
	public:
		graphm(int numVert)     //���캯��
		{ Init(numVert); }
		~graphm(){}
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
			for (i=0;i< numVert; i++) //Initialize to 0 weights ��ʼ��ȨֵΪ0
			{
				 for (int j=0; j<numVert; j++)
				 {
				 	matrix[i][j] = 0;
				 }
			}
		}
		int n() {return numVert; } //���ؽڵ���
		int e() {return numEdge; }   //���ر���
		int first(int v) //����v�ĵ�һ���ھ�
  		{
			for (int i=0; i<numVert; i++)
			{
				if(matrix[v][i]!= 0) return i;
			}
			return numVert;           // ���û���ھӷ��ؽڵ���
 		}
		int next(int v, int w) //����v����w����ھ� 
  		{
			for(int i=w+1; i<numVert; i++)
			{
				if(matrix[v][i] != 0)
					return i;
			}
			return numVert;           //���û���ھӷ��ؽڵ���
		}
		void setVex(int v,VT value)//��ĳ�����㸳ֵ
		{
			vex=value;
	    }
	  	void setEdge(int v1, int v2, int wt) //���ñ�(v1,v2)��ȨֵΪwt
	  	{
			if(matrix[v1][v2]== 0)
				numEdge++;
			matrix[v1][v2] = wt;
	  	}
	  	void setValue(int v, int val) 
		{ mark[v] = val; }
	    VT getVex(int v)//����ĳ�������ֵ(ʵ����Ϣ)
		{
			return vex;
	    }
	    int getValue(int v) 
		{ return mark[v]; }
		void delEdge(int v1, int v2) //Delete edge (v1, v2) ɾ����(v1,v2)
	 	{
	    	if(matrix[v1][v2]!= 0)//�ж��� 
			{
				numEdge--;
				matrix[v1][v2] = 0;
			}
		}
		bool isEdge(int i, int j) // Is(i, j) an edge? �жϱ�(i,j)��ͼ�е�һ������
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
