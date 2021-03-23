#ifndef BSTNODE_H
#define BSTNODE_H

template <typename N> class BSTNode
{
	private:
		N it;
		BSTNode<N>* lc;
		BSTNode<N>* rc;
	public:
		BSTNode(){it=0;lc=NULL;rc=NULL;}
		~BSTNode(){}
		int& element() //返回节点元素
		{
			return it;
		}
		BSTNode<N>* left() const  //返回左结点下标
		{
			return lc;
		}
		BSTNode<N>* right() const  //返回右节点下标
		{
			return rc;
		}
		void setElement(const N& e)//设置节点元素
		{
			it=e;
		}
		void setLeft(BSTNode<N>* l) //设置左孩子
		{
			lc=l;
		}
		void setRight(BSTNode<N>* r) //设置左孩子
		{
			rc=r;
		}
		bool isLeaf()
		{
			return (lc == NULL) && (rc == NULL);
		} 
};

#endif
