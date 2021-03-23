#ifndef BINTREE_H
#define BINTREE_H

#include <iostream>
#include <queue>
#include "Tree.h"
#include "BinNode.h"
using namespace std;
template <typename N> class BinTree:public Tree<N>
{
	private:
		BinNode<N>* root; 
	public:
		BinTree()
		{
			root=NULL;
		}
		~BinTree(){}
		BinNode<N>* Root() const
		{
			return root;
		} 
		void setRoot(BinNode<N>* n)//���ø���� 
		{
			root=n;
		} 
		bool Tree_Empty(BinNode<N>* node)//�ж��ǲ��ǿ��� 
		{
			if(node!=NULL)
				return true;
			else return false;
		}
		void pre(BinNode<N>* node)//ǰ����� 
		{
			if(node==NULL) return;
			else 
			{
				cout<<node->element()<<" ";
				pre(node->left());
				pre(node->right());
			}
		}
		void in(BinNode<N>* node)//������� 
		{
			if(node==NULL) return;
			else 
			{
				pre(node->left());
				cout<<node->element()<<" ";
				pre(node->right());
			}
		} 
		void post(BinNode<N>* node)//������� 
		{
			if(node==NULL) return;
			else 
			{
				pre(node->left());
				pre(node->right());
				cout<<node->element()<<" ";
			}
		} 
		void Level(BinNode<N>* rt)//��α��� 
		{
			queue<BinNode<N>*> q;
			if(rt!=NULL)
				q.push(rt);
			BinNode<N>* b;
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
		BinNode<N>* CreatTree(N p1[],int s1,int e1,N p2[],int s2,int e2)
		{
			int i=0;
			BinNode<N>* rt=new BinNode<N>;
			rt->setElement(p2[e2]);
			while(p1[s1+i]!=rt->element()) 
			{
				i++;
			}
			if(i>0)//����������
			{
				rt->setLeft(CreatTree(p1,s1,s1+i-1,p2,s2,s2+i-1));
			} 
			if(s1+i<e1)//����������
			{
				rt->setRight(CreatTree(p1,s1+i+1,e1,p2,s2+i,e2-1));
			} 
			return rt;
		}
};

#endif
