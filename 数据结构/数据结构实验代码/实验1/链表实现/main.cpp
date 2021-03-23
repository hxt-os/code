#include <iostream>
#include "link.h"
#include "list.h"
#include "llist.h"
using namespace std;
int main(int argc, char** argv) 
{
//	//统计字符个数 
//	llist<char> str;
//	char ch;
//	while((ch=getchar())!=EOF)
//	{
//		str.append(ch);
//	}
//	int i=0,len=str.length(),letter=0,digital=0,other=0;//测量线性表长度  
//	str.moveToStart();//移动指针到起始位置 
//	for(i=str.currPos();i<len;i++)
//	{
//		char sh=str.getValue(i);
//		if((sh>='a'&&sh<='z')||(sh>='A'&&sh<='Z'))
//		{
//			letter++;
//		}
//		else if(sh>='0'&&sh<='9')
//		{
//			digital++;
//		}
//		else if(sh!='\n'){
//			other++;
//		}
//	}
//	cout<<letter<<" "<<digital<<" "<<other<<endl;
//	str.moveToStart();i=0;
//	for(i=0;i<len;)
//	{
//		char zh=str.getValue(i);
//		if(zh>='0'&&zh<='9')
//		{
//			str.remove();
//			len=str.length();//更新长度 
//		}
//		else 
//		{
//			i++;str.moveToPos(i);	
//		} 
//	}
//	str.Print();
	
	//测试内容 
	int n,num,L=0;//n为输入的元素个数
	cout<<"输入元素个数\n"; 
	cin>>n; 
	llist<int> l;//定义一个大小为100的整形顺序表
	//测试添加元素 添加12 34 54 67 78
	for(int i=0;i<n;i++)
	{
		cin>>num;
		l.append(num);
	}
	L=l.length();//获取当前线性表长度
	cout<<"当前线性表长度为："<<L<<endl;
	
	//测试移动元素到某一指定位置
	l.moveToPos(3);
	cout<<"当前位置是："<<l.currPos()<<endl; 
	//测试插入元素
	l.insert(1000);
	for(int i=0;i<l.length();i++)
	{
		cout<<l.getValue(i)<<" ";
	}
	cout<<endl;
	int value;
	//测试查找元素
	cout<<"输入需要查找的元素:";
	cin>>value;
	cout<<l.FindValue(value)<<endl;
	return 0;
}
