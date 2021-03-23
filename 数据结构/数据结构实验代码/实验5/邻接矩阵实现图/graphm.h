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
		VT vexs[MAX_VERTEX_NUM]; //�洢������Ϣ
		int**matrix;           //ָ���ڽӾ���matrix
		int*mark;              //ָ��������
	public:
		graphm(int numVert)     //���캯��
		{ Init(numVert); }
		~graphm()
		{   
			/*delete []mark; //���ն�̬�����ڴ�
			for (int i=0; i<numVert; i++)
			{
				delete []matrix[i];
			}
			delete []matrix;*/
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
			matrix =(int**) new int*[numVert]; // ��ʼ���ڽӾ���
			for (i=0;i<numVert; i++)
			{
				matrix[i]= new int[numVert];
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
		//����ͼ�����ͣ�����ͼ������ͼ��
       	void setType(bool flag)
	   	{
			undirected=flag;
		}
		void setVex(int v,VT value)//��ĳ�����㸳ֵ
		{
			vexs[v]=value;
			mark[v]=VISITED;
	    }
	  	void setEdge(int v1, int v2, int wt) //���ñ�(v1,v2)��ȨֵΪwt
	  	{
			if(wt>0)
			{
				if(matrix[v1][v2]== 0)
					numEdge++;
				matrix[v1][v2] = wt;
				if(undirected)//�ж��Ƿ�Ϊ����ͼ 
				{
					matrix[v2][v1] = wt;
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
			return vexs[v];
	    }
	    int getValue(int v) 
		{ return mark[v]; }
		int getMa(int i,int j)
		{
			return matrix[i][j];
		}
		void delEdge(int v1, int v2) //Delete edge (v1, v2) ɾ����(v1,v2)
	 	{
	    	if(matrix[v1][v2]!= 0)//�ж��� 
			{
				numEdge--;
				matrix[v1][v2] = 0;
				if(undirected)
				{
					matrix[v2][v1] = 0;
				} 
			}
		}
		bool isEdge(int i, int j) // Is(i, j) an edge? �жϱ�(i,j)��ͼ�е�һ������
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
