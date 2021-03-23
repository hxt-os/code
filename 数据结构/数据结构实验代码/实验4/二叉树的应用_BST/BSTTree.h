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
		void setRoot(BSTNode<N>* n)//���ø���� 
		{
			root=n;
		} 
		bool Tree_Empty(BSTNode<N>* node)//�ж��ǲ��ǿ��� 
		{
			if(node!=NULL)
				return true;
			else return false;
		}
		void Level(BSTNode<N>* rt)//��α��� 
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
		{	//�˺�������������������
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
				return; //p��û��Ԫ��Ҫ�����ǵݹ����
			int l =Getleft(right-left+1); //����������ڵ����
			a[root]=p[left+l];
			CreatTree(p,left,left+l-1,root*2+1,a); //�������ݹ�
			CreatTree(p,left+l+1,right,root*2+2,a); //�������ݹ�
		}
		
};

#endif
