#ifndef BSTTREE_H
#define BSTTREE_H

#include <iostream>
#include <queue>
#include <cmath>
#include "Tree.h"
#include "BSTNode.h"
using namespace std;
template <typename N> class BSTTree:public Tree<N>
{
	private:
		BSTNode<N>* root; 
	public:
		BSTTree()
		{
			root=NULL;
		}
		~BSTTree(){}
		BSTNode<N>* Root() const
		{
			return root;
		} 
		void setRoot(BSTNode<N>* n)//设置根结点 
		{
			root=n;
		} 
		bool Tree_Empty(BSTNode<N>* node)//判断是不是空树 
		{
			if(node!=NULL)
				return true;
			else return false;
		}
		void Level(BSTNode<N>* rt)//层次遍历 
		{
			queue<BSTNode<N>*> q;
			if(rt!=NULL)
				q.push(rt);
			BSTNode<N>* b;
			while(!q.empty())
			{
				b=q.front();
				cout<<b->element()<<' ';
				q.pop();
				if(b->left()!=NULL)
					q.push(b->left());
				if(b->right()!=NULL)
					q.push(b->right());
			}
		}
		int Getleft(int n)
		{	//此函数计算左子树结点个数
			int l=0, h=0, i=0;
			while(pow(2,i)<=n)
			{
				i++;
			}
			h=i-1;
			l=n+1-pow(2, h);
			if (l>pow(2, h - 1))
				return pow(2, h)-1;
			else
				return n-pow(2,h-1);
		}
		void CreatTree(int  p[],int left,int right,int root,int a[])
		{
			int n=right-left+1;
			if (n == 0)
				return; //p中没有元素要处理是递归出口
			int l =Getleft(right-left+1); //获得左子树节点个数
			a[root]=p[left+l];
			CreatTree(p,left,left+l-1,root*2+1,a); //左子树递归
			CreatTree(p,left+l+1,right,root*2+2,a); //右子树递归
		}
		
};

#endif
