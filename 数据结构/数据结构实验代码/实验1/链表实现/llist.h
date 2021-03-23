#ifndef LLIST_H
#define LLIST_H
#include <assert.h>
#include <iostream>
#include "list.h"
#include "link.h"
template <typename L> class llist : public list<L>
{
	private:
		link<L>* head;//����ͷָ�� 
		link<L>* tail;//����βָ�� 
		link<L>* curr;//���嵱ǰָ�� 
		int size;
		void init()
		{
			curr=tail=head=new link<L>(0,NULL);	//ע���ʼ�� 
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
		void insert(const L& it)//����,��const˵�������ֵ���ܱ�����
		{
			curr->next=new link<L>(it,curr->next);
			if(tail==curr) tail=curr->next;//new tail
			size++;
		} 
		void append(const L& it)//�ڱ�β����һ��Ԫ�� 
		{
			tail->next=new link<L>(it,NULL);
			tail=tail->next;
			size++;
		}
		void remove()//ɾ����ǰԪ��
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
		void moveToStart()//�ƶ�����ͷԪ��
		{
			curr=head;
		}
		void moveToEnd()//�ƶ�����βԪ�� 
		{
			curr=tail;
		}
		void prev()//�ƶ���ǰһ�� 
		{
			if(curr==head) return ;
			link<L>* temp=head;
			while(temp->next!=curr) temp=temp->next;
			curr=temp;
		}
		void next()//�ƶ�����һ��
		{
			if(curr==tail) return ;
			else curr=curr->next;
		} 
		int length() const//�������Ա��� 
		{
			return size;
		}
		int currPos() const//���ص�ǰλ��
		{
			link<L>* temp=head;
			int i=0;
			for(i=0;curr!=temp;i++)
			{
				temp=temp->next;
			}
			return i;
		} 
		void moveToPos(int pos)//�ƶ���ָ��λ�� 
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
		bool FindValue(const L& item)//����ĳ��Ԫ���Ƿ����
		{
			int k=0;
			link<L>* it=head;
			for(int i=0;it!=NULL;i++)
			{
				if(it->element==item) 
				{
					k=1;break;
				}
				else it=it->next;
			}
			if(k) return true;
			else return false;
		} 
		L getValue(int pos) //����ĳһ��λ�õ�ֵ 
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
