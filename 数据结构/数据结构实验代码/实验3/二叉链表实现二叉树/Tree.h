#ifndef TREE_H
#define TREE_H
#include "BinNode.h"
template <typename N > class Tree//树的ADT 
{
	public:
		Tree(){}
		virtual ~Tree(){}
		virtual BinNode<N>* Root() const =0;
		virtual void setRoot(BinNode<N>* ) =0;//设置根结点 
		virtual bool Tree_Empty(BinNode<N>* )=0;//判断是不是空树 
		virtual void pre(BinNode<N>* )=0;//前序遍历 
		virtual void in(BinNode<N>* )=0;//中序遍历 
		virtual void post(BinNode<N>* )=0;//后序遍历 
		virtual void Level(BinNode<N>* )=0;//层次遍历 
		virtual BinNode<N>* CreatTree(N p1[],int s1,int e1,N p2[],int s2,int e2)=0;//构建树 
};

#endif
