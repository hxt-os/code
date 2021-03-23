#ifndef TREE_H
#define TREE_H

#include "BSTNode.h" 
template <typename N > class Tree//树的ADT 
{
	public:
		Tree(){}
		virtual ~Tree(){}
		virtual BSTNode<N>* Root() const =0;
		virtual void setRoot(BSTNode<N>* ) =0;//设置根结点 
		virtual bool Tree_Empty(BSTNode<N>* )=0;//判断是不是空树 
		virtual void Level(BSTNode<N>* )=0;//层次遍历 
		virtual void CreatTree(int p[],int left,int right,int root,int a[])=0;
};
#endif
