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
		int& element() //���ؽڵ�Ԫ��
		{
			return it;
		}
		BSTNode<N>* left() const  //���������±�
		{
			return lc;
		}
		BSTNode<N>* right() const  //�����ҽڵ��±�
		{
			return rc;
		}
		void setElement(const N& e)//���ýڵ�Ԫ��
		{
			it=e;
		}
		void setLeft(BSTNode<N>* l) //��������
		{
			lc=l;
		}
		void setRight(BSTNode<N>* r) //��������
		{
			rc=r;
		}
		bool isLeaf()
		{
			return (lc == NULL) && (rc == NULL);
		} 
};

#endif
