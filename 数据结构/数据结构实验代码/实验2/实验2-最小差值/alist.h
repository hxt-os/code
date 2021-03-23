#ifndef ALIST_H
#define ALIST_H

#include "list.h"
#include <iostream>
#include <cmath>
using namespace std;
template<typename L>
class alist : public list<L>
{
	private:
		int maxSize;//线性表可容纳的最大元素个数 
		int listSize;//线性表的元素个数 
		int curr;//当前元素的位置 
		L* listArray;//用于存放线性表的元素
	public:
		alist(const L& size)
		{
			maxSize=size;
			listSize=curr=0;
			listArray=new L[maxSize];
		}
		~alist()
		{
			delete [] listArray;
		}
		void clear()
		{
			delete [] listArray;
			listSize=curr=0;
			listArray=new L[maxSize];
		}
		void insert(const L& it)
		{
			if(listSize>=maxSize)
			{
				cout<<"List capacity exceeded";
			}
			else
			{
				for(int i=listSize-1;i>curr;i--)
				{
					listArray[i]=listArray[i-1];
				} 
				listArray[curr]=it;
				listSize++;//当前元素个数加1 
			}
		}
		void append(const L& it)
		{
			if(listSize<maxSize)
			{
				listArray[listSize++]=it; 
			}
		} 
		void remove()
		{
			if(curr>=0&&curr<listSize)
			{
				for(int i=curr;i<listSize-1;i++)
				{
					listArray[i]=listArray[i+1];	
				}
				listSize--;
			}
		}
		void moveToStart() { curr=0;}
		void moveToEnd() { curr=listSize;}
		void prev()
		{
			if(curr) curr--;
		}
		void next()
		{
			if(curr<listSize) curr++;
		}
		int length() const {return listSize;}
		int currPos() const {return curr;}
		void moveToPos(int Pos)
		{
			if(Pos>=0&&Pos<listSize)
			{
				curr=Pos;
			}
		}
		bool FindValue(const L& it)
		{
			if(curr>=0&&curr<listSize)
			{
				int k=0;
				for(int i=0;i<listSize;i++)
				{
					if(it==listArray[i])
					{
						k=1;break;
					}	
				}
				if(k) return true;
				else {
					return false;
					cout<<"not finding";
				}
			}
			else 
			{
				return false;
				cout<<"not finding";
			}
		}
		L getValue(int pos) 
		{
			if(pos>=0&&pos<listSize)
			{
				return listArray[pos];
			}
		}
		int min_cha()//求最小差值 
		{
			int min=fabs(this->getValue(1)-this->getValue(0));
			for(int i=0;i<this->length();i++)
			{
				for(int j=i+1;j<this->length();j++)
				{
					if(abs(this->getValue(j)-this->getValue(i))<min)
						min=abs(this->getValue(j)-this->getValue(i));
				}
			}
			return min;
		}
};
#endif

