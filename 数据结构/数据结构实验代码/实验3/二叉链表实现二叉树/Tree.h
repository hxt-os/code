#ifndef TREE_H
#define TREE_H
#include "BinNode.h"
template <typename N > class Tree//����ADT 
{
	public:
		Tree(){}
		virtual ~Tree(){}
		virtual BinNode<N>* Root() const =0;
		virtual void setRoot(BinNode<N>* ) =0;//���ø���� 
		virtual bool Tree_Empty(BinNode<N>* )=0;//�ж��ǲ��ǿ��� 
		virtual void pre(BinNode<N>* )=0;//ǰ����� 
		virtual void in(BinNode<N>* )=0;//������� 
		virtual void post(BinNode<N>* )=0;//������� 
		virtual void Level(BinNode<N>* )=0;//��α��� 
		virtual BinNode<N>* CreatTree(N p1[],int s1,int e1,N p2[],int s2,int e2)=0;//������ 
};

#endif
