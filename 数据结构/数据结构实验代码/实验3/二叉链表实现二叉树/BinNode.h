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
		int& element() //���ؽڵ�Ԫ��
		{
			return it;
		}
		BinNode<N>* left() const  //���������±�
		{
			return lc;
		}
		BinNode<N>* right() const  //�����ҽڵ��±�
		{
			return rc;
		}
		void setElement(const N& e)//���ýڵ�Ԫ��
		{
			it=e;
		}
		void setLeft(BinNode<N>* l) //��������
		{
			lc=l;
		}
		void setRight(BinNode<N>* r) //��������
		{
			rc=r;
		}
		bool isLeaf()
		{
			return (lc == NULL) && (rc == NULL);
		} 
};
#endif
