#include <iostream>
#include "link.h"
#include "list.h"
#include "llist.h"
using namespace std;
int main(int argc, char** argv) 
{
//	//ͳ���ַ����� 
//	llist<char> str;
//	char ch;
//	while((ch=getchar())!=EOF)
//	{
//		str.append(ch);
//	}
//	int i=0,len=str.length(),letter=0,digital=0,other=0;//�������Ա���  
//	str.moveToStart();//�ƶ�ָ�뵽��ʼλ�� 
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
//			len=str.length();//���³��� 
//		}
//		else 
//		{
//			i++;str.moveToPos(i);	
//		} 
//	}
//	str.Print();
	
	//�������� 
	int n,num,L=0;//nΪ�����Ԫ�ظ���
	cout<<"����Ԫ�ظ���\n"; 
	cin>>n; 
	llist<int> l;//����һ����СΪ100������˳���
	//�������Ԫ�� ���12 34 54 67 78
	for(int i=0;i<n;i++)
	{
		cin>>num;
		l.append(num);
	}
	L=l.length();//��ȡ��ǰ���Ա���
	cout<<"��ǰ���Ա���Ϊ��"<<L<<endl;
	
	//�����ƶ�Ԫ�ص�ĳһָ��λ��
	l.moveToPos(3);
	cout<<"��ǰλ���ǣ�"<<l.currPos()<<endl; 
	//���Բ���Ԫ��
	l.insert(1000);
	for(int i=0;i<l.length();i++)
	{
		cout<<l.getValue(i)<<" ";
	}
	cout<<endl;
	int value;
	//���Բ���Ԫ��
	cout<<"������Ҫ���ҵ�Ԫ��:";
	cin>>value;
	cout<<l.FindValue(value)<<endl;
	return 0;
}
