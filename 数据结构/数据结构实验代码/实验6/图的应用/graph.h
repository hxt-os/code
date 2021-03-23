#ifndef GRAPH_H
#define GRAPH_H

template <typename VT> class graph
{
	public:
		graph(){}
		virtual ~graph(){}
		virtual void Init(int n)=0;//初始化有n个顶点的图
		virtual int n()=0;
		virtual int e()=0;//返回图的顶点数和边数
		virtual int first(int v)=0;//返回 顶点v的第一个数据
		virtual int next(int v,int w)=0;//回 顶点v的下一个数
		virtual void setVex(int v,VT value)=0;//设置某个顶点的值
		virtual void setEdge(int v1,int v2,int wight)=0;//设置边权
		virtual void setValue(int v,int val)=0;// 
		virtual VT getVex(int v)=0;//返回某个顶点的值
		virtual int getValue(int v)=0;
		virtual void delEdge(int v1,int v2)=0;//删除边v1,v2
		virtual bool isEdge(int i,int j)=0;//判断边是否在图中
		virtual int weight(int v1,int v2)=0;//返回边的权值
};
#endif
