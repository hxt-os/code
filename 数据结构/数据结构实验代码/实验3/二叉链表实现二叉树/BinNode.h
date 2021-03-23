#ifndef BINNODE_H
#define BINNODE_H
template <typename N> class BinNode
{
	private:
		N it;
		BinNode<N>* lc;
		BinNode<N>* rc;
	public:
		BinNode(){it=0;lc=NULL;rc=NULL;}
		~BinNode(){}
		int& element() //返回节点元素
		{
			return it;
		}
		BinNode<N>* left() const  //返回左结点下标
		{
			return lc;
		}
		BinNode<N>* right() const  //返回右节点下标
		{
			return rc;
		}
		void setElement(const N& e)//设置节点元素
		{
			it=e;
		}
		void setLeft(BinNode<N>* l) //设置左孩子
		{
			lc=l;
		}
		void setRight(BinNode<N>* r) //设置左孩子
		{
			rc=r;
		}
		bool isLeaf()
		{
			return (lc == NULL) && (rc == NULL);
		} 
};
#endif
