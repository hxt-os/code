#ifndef LLIST_H
#define LLIST_H
#include <assert.h>
#include <iostream>
#include "list.h"
#include "link.h"
template <typename L> class llist : public list<L>
{
	private:
		link<L>* head;//定义头指针 
		link<L>* tail;//定义尾指针 
		link<L>* curr;//定义当前指针 
		int size;
		void init()
		{
			curr=tail=head=new link<L>;	//注意初始化 
			size=0;
		} 
		void deleteall()
		{
			while(head!=NULL)
			{
				curr=head;
				head=head->next;
				delete curr;
			}
		}
	public:
		llist()
		{
			init();
		}
		~llist()
		{
			deleteall();
		}
		void clear()
		{
			deleteall();init();
		}
		void insert(const L& it)//插入,加const说明对象的值不能被更新
		{
			curr->next=new link<L>(it,curr->next);
			if(tail==curr) tail=curr->next;//new tail
			size++;
		} 
		void append(const L& it)//在表尾加上一个元素 
		{
			tail->next=new link<L>(it,NULL);
			tail=tail->next;
			size++;
		}
		void remove()//删除当前元素
		{
			if(curr->next!=NULL)
			{
				link<L>* ltemp=curr->next;
				if(tail==curr->next)
				{
					tail=curr;
				}
				curr->next=curr->next->next;
				delete ltemp;
				size--;
			}
		}
		void moveToStart()//移动到表头元素
		{
			curr=head;
		}
		void moveToEnd()//移动到表尾元素 
		{
			curr=tail;
		}
		void prev()//移动到前一个 
		{
			if(curr==head) return ;
			link<L>* temp=head;
			while(temp->next!=curr) temp=temp->next;
			curr=temp;
		}
		void next()//移动到后一个
		{
			if(curr==tail) return ;
			else curr=curr->next;
		} 
		int length() const//返回线性表长度 
		{
			return size;
		}
		int currPos() const//返回当前位置
		{
			link<L>* temp=head;
			int i=0;
			for(i=0;curr!=temp;i++)
			{
				temp=temp->next;
			}
			return i;
		} 
		void moveToPos(int pos)//移动到指定位置 
		{
			if(pos>=0&&pos<size)
			{
				curr=head;
				for(int i=0;i<pos;i++)
				{
					curr=curr->next;
				}
			}
		}
		L getValue(int pos) //返回某一个位置的值 
		{
			assert(pos>=0&&pos<size);
			link<L>* it=head;
			for(int i=0;i<pos;i++)
			{
				it=it->next;
			}
			return it->next->element; 
		}
		void Print()
		{
			link<L>* it=head;
			while(it->next!=NULL)
			{
				std::cout<<it->next->element;
				it=it->next;
			}
		}
};

#endif
