#ifndef LINK_H
#define LINK_H
template <typename L> class link
{
	public:
		L element;//�ڵ��ʾ����ֵ
		link* next;//�ڵ�ָ��(����һ������ָ�� 
		link(const L& elemval, link* nextval =NULL)
    	{ element = elemval;  next = nextval; }
  		link(link* nextval =NULL) { next = nextval; }
};
#endif

