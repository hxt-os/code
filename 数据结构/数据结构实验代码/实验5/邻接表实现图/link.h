#ifndef LINK_H
#define LINK_H
template <typename L> class link
{
	public:
		L element;//节点表示的数值
		link* next;//节点指针(声明一个对象指针 
		link(const L& elemval, link* nextval =NULL)
    	{ element = elemval;  next = nextval; }
  		link(link* nextval =NULL) { next = nextval; }
};
#endif

