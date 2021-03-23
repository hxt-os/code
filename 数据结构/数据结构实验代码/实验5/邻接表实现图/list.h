#ifndef LIST_H
#define LIST_H
template<typename L> class list//������ 
{
	private:
	  void operator =(const list&) {}      // Protect assignment
	  list(const list&) {}           // Protect copy constructor
	public:
		list(){} 
		virtual~list() {}
		virtual void clear()=0;//���麯��
		virtual void insert(const L& it)=0;//����,��const˵�������ֵ���ܱ����� 
		virtual void append(const L& it)=0;//�ڱ�β����һ��Ԫ�� 
		virtual void remove()=0;//ɾ����ǰԪ��
		virtual void moveToStart()=0;//�ƶ�����ͷԪ��
		virtual void moveToEnd()=0;//�ƶ�����βԪ�� 
		virtual void prev()=0;//�ƶ���ǰһ�� 
		virtual void next()=0;//�ƶ�����һ�� 
		virtual int length() const=0;//�������Ա��� 
		virtual int currPos() const=0;//���ص�ǰλ�� 
		virtual void moveToPos(int pos)=0;//�ƶ���ָ��λ�� 
		virtual L getValue(int pos)=0;//����ĳһ��λ�õ�ֵ 
};
#endif


