#include <iostream>
#include "list.h"
#include "alist.h"
using namespace std;
int main(int argc, char** argv)
{
	//ͳ���ַ����� 
	alist<char> str(100);
	char ch;
	while(cin>>ch)
	{
		str.append(ch);
	}
	int i=0,len=str.length(),letter=0,digital=0,other=0;//�������Ա���  
	str.moveToStart();//�ƶ�ָ�뵽��ʼλ�� 
	for(i=str.currPos();i<len;i++)
	{
		char sh=str.getValue(i);
		if((sh>='a'&&sh<='z')||(sh>='A'&&sh<='Z'))//ͳ��for(int i=1;i<=t.n;i++)
	{
		cin>>t.w[i];
		t.num[i]=0;
	}��ĸ 
		{
			letter++;
		}
		else if(sh>='0'&&sh<='9')//ͳ������ 
		{
			digital++;
		}
		else if(sh!='\n')//ͳ�������ַ� 
		{
			other++;
		}
	}
	cout<<letter<<" "<<digital<<" "<<other<<endl;
	str.moveToStart();i=0;//�ƶ�ָ�뵽��ʼλ��
	for(i=0;i<len;)
	{
		char zh=str.getValue(i);
		if(zh>='0'&&zh<='9')
		{
			str.remove();
			len=str.length();//���³��� 
		}
		else 
		{
			i++;str.moveToPos(i);//�������֣������ƶ�һλ	
		} 
	}
	len=str.length();
	for(i=0;i<len;i++)
	{
		cout<<str.getValue(i); 
	}
	
	/*//�������� 
	int n,num,L=0;//nΪ�����Ԫ�ظ���
	cout<<"����Ԫ�ظ���\n"; 
	cin>>n; 
	alist<int> l(100);//����һ����СΪ100������˳���
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
	cout<<l.FindValue(value)<<endl;*/
	return 0;
}

