#ifndef GRAPH_H
#define GRAPH_H

template <typename VT> class graph
{
	public:
		graph(){}
		virtual ~graph(){}
		virtual void Init(int n)=0;//��ʼ����n�������ͼ
		virtual int n()=0;
		virtual int e()=0;//����ͼ�Ķ������ͱ���
		virtual int first(int v)=0;//���� ����v�ĵ�һ������
		virtual int next(int v,int w)=0;//�� ����v����һ����
		virtual void setVex(int v,VT value)=0;//����ĳ�������ֵ
		virtual void setEdge(int v1,int v2,int wight)=0;//���ñ�Ȩ
		virtual void setValue(int v,int val)=0;// 
		virtual VT getVex(int v)=0;//����ĳ�������ֵ
		virtual int getValue(int v)=0;
		virtual void delEdge(int v1,int v2)=0;//ɾ����v1,v2
		virtual bool isEdge(int i,int j)=0;//�жϱ��Ƿ���ͼ��
		virtual int weight(int v1,int v2)=0;//���رߵ�Ȩֵ
};
#endif
