#ifndef LIST_H
#define LIST_H
template<typename L> class list//抽象类 
{
	private:
	  void operator =(const list&) {}      // Protect assignment
	  list(const list&) {}           // Protect copy constructor
	public:
		list(){} 
		virtual~list() {}
		virtual void clear()=0;//纯虚函数
		virtual void insert(const L& it)=0;//插入,加const说明对象的值不能被更新 
		virtual void append(const L& it)=0;//在表尾加上一个元素 
		virtual void remove()=0;//删除当前元素
		virtual void moveToStart()=0;//移动到表头元素
		virtual void moveToEnd()=0;//移动到表尾元素 
		virtual void prev()=0;//移动到前一个 
		virtual void next()=0;//移动到后一个 
		virtual int length() const=0;//返回线性表长度 
		virtual int currPos() const=0;//返回当前位置 
		virtual void moveToPos(int pos)=0;//移动到指定位置 
		virtual L getValue(int pos)=0;//返回某一个位置的值 
};
#endif


