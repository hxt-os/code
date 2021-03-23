#include <iostream>
#include <fstream>
#include <algorithm>
#include <string>
#include <cmath>
#include <ctime>
#include <windows.h>//������Windows������������̬���������á����Ͻṹ�ͳ���ʶ���֣�������Windows�ļ��е�һ����Ҫ���֡�
using namespace std;
LARGE_INTEGER fre;
LARGE_INTEGER start,end; 
double dft=0;//ʱ�� 
int max0=1002000;//�������ֵ 
string str1="ð�����������\t",str3="����ʱ��Ϊ:   "; 
void set()//������ͬ��ģ��������ݣ��������ļ� 
{
	int i=0; 
	srand(time(NULL)); //����ʱ������ 
	ofstream outfile1("num1.txt",ios::out);
	for(i=1;i<=100;i++)
	{
		int m=rand()%max0; 
		outfile1<<m<<" ";
	}
	outfile1.close();
	
	ofstream outfile2("num2.txt",ios::out);
	for(i=1;i<=1000;i++)
	{
		int m=rand()%max0;
		outfile2<<m<<" ";
	}
	outfile2.close();
	
	ofstream outfile3("num3.txt",ios::out); 
	for(i=1;i<=10000;i++)
	{
		int m=rand()%max0; 
		outfile3<<m<<" ";
	}
	outfile3.close();
	
	ofstream outfile4("num4.txt",ios::out);
	for(i=1;i<=100000;i++)
	{
		int m=rand()%max0;
		outfile4<<m<<" ";
	}
	outfile4.close();
	
	ofstream outfile5("num5.txt",ios::out); 
	for(i=1;i<=1000000;i++)
	{
		int m=rand()%max0;
		outfile5<<m<<" ";
	}
	outfile5.close();
}
void my_swap(int *a,int i,int j)
{
	int temp;
	temp=a[i];
	a[i]=a[j];
	a[j]=temp;
}
void bub_sort(int *a,int n)
{
	for(int i=0;i<n-1;i++)
	{
		for(int j=n-1;j>i;j--)
		{
			if(a[j]<=a[j-1])
				my_swap(a,j,j-1); 
		}
	 } 
} 
void test(ifstream &in,ofstream &out,int N)//���Ժ��� 
{
	int i=0;
	int *l=new int[N+10],*temp=new int[N+10];
	for(i=0;i<N;i++)
	{
		in>>l[i];
	}
	in.close();
	QueryPerformanceFrequency(&fre);//���ʱ��Ƶ��
	QueryPerformanceCounter(&start);
	bub_sort(l,N);
	QueryPerformanceCounter(&end);
	dft=(double)(end.QuadPart-start.QuadPart)/(double)fre.QuadPart;
	cout<<str1<<str3<<dft*1000<<" ms\n";
	out<<str1<<str3<<dft*1000<<" ms\n";
	for(i=0;i<N;i++)//���ź������������ļ��� 
	{
		out<<l[i]<<" ";
	}
	out.close();
}
int main()
{
	//set();//������ͬ��ģ���������  
	//����5�β�ͬ���ݹ�ģ�Ĳ��ԣ����ݹ�ģ�ֱ���100,1000,10000,100000,1000000 
	for(int j=0;j<5;j++)
	{
		switch(j)
		{
			case 0:
			{
				cout<<"���й�ģΪ100������\n"; 
				ifstream in1("num1.txt",ios::in); //�����ļ����������� 
				ofstream out1("num1_out.txt",ios::out);//�����ļ��� д����ҽ�� 
				test(in1,out1,100);
				break;
			}
			case 1:
			{
				cout<<"���й�ģΪ1000������\n"; 
				ifstream in2("num2.txt",ios::in); 
				ofstream out2("num2_out.txt",ios::out);
				test(in2,out2,1000);
				break;
			}
			case 2:
			{
				cout<<"���й�ģΪ10000������\n"; 
				ifstream in3("num3.txt",ios::in); 
				ofstream out3("num3_out.txt",ios::out);
				test(in3,out3,10000);
				break;
			}
			case 3:
			{
				cout<<"���й�ģΪ100000������\n"; 
				ifstream in4("num4.txt",ios::in); 
				ofstream out4("num4_out.txt",ios::out);
				test(in4,out4,100000);
				break;
			}
			default:
			{
				cout<<"���й�ģΪ1000000������\n"; 
				ifstream in5("num5.txt",ios::in); 
				ofstream out5("num5_out.txt",ios::out);
				test(in5,out5,1000000);
				break;
			}
		} 
		cout<<"�������,�������Ѵ����ļ���\n";
	}
}
