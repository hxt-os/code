#ifndef TREE_H
#define TREE_H

#include "BSTNode.h" 
template <typename N > class Tree//����ADT 
{
	public:
		Tree(){}
		virtual ~Tree(){}
		virtual BSTNode<N>* Root() const =0;
		virtual void setRoot(BSTNode<N>* ) =0;//���ø���� 
		virtual bool Tree_Empty(BSTNode<N>* )=0;//�ж��ǲ��ǿ��� 
		virtual void Level(BSTNode<N>* )=0;//��α��� 
		virtual void CreatTree(int p[],int left,int right,int root,int a[])=0;
};
#endif
