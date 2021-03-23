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
string str1="�������������\t",str3="����ʱ��Ϊ:   ",str2="�鲢���������\t"; 
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
void Quick_sort(int *a,int i,int j)
{
	if(j<=i) return; 
	int p=(i+j)/2;//ȥ�м�λ��Ϊ�� 
	swap(a[p],a[j]);// ����ŵ�ĩβ
	int s=i,e=j;
	do
	{
		while(s<e&&a[s]<=a[j])
		{
			++s;	
		}
		while(e>s&&a[e]>=a[j])
		{
			--e;
		}	
		swap(a[s],a[e]);
	}while(s<e) ;
	swap(a[s],a[j]);
	Quick_sort(a,i,s-1);
	Quick_sort(a,s+1,j);
} 
void merge_sort(int *a,int *temp,int left,int right)
{
	if(right==left) return ;
	int mid=(left+right)/2;
	merge_sort(a,temp,left,mid);
	merge_sort(a,temp,mid+1,right);
	for(int i=left;i<=right;i++)
	{
		temp[i]=a[i];
	}
	int i1=left,i2=mid+1;
	for(int curr=left;curr<=right;curr++)
	{
		if(i1==mid+1)
			a[curr]=temp[i2++];
		else if(i2>right)
			a[curr]=temp[i1++];
		else if(temp[i1]<=temp[i2])
			a[curr]=temp[i1++];
		else a[curr]=temp[i2++];
	}
} 
void test_qsort(ifstream &in,ofstream &out,int N)//���Ժ��� 
{
	out<<"��ģΪ "<<N<<" �Ŀ�������\n"; 
	int i=0;
	int *l=new int[N+10]; 
	for(i=0;i<N;i++)
	{
		in>>l[i];
	}
	in.close();
	QueryPerformanceFrequency(&fre);//���ʱ��Ƶ��
	QueryPerformanceCounter(&start);
	Quick_sort(l,0,N-1);
	QueryPerformanceCounter(&end);
	dft=(double)(end.QuadPart-start.QuadPart)/(double)fre.QuadPart;
	cout<<str1<<str3<<dft*1000<<" ms\n";
	out<<str1<<str3<<dft*1000<<" ms\n";
	for(i=0;i<N;i++)//���ź������������ļ��� 
	{
		out<<l[i]<<" ";
	}
	out<<"\n";
	out.close();
}
void test_merge(ifstream &in,ofstream &out,int N)//���Ժ��� 
{
	out<<"��ģΪ "<<N<<" �Ĺ鲢����\n"; 
	int i=0;
	int *l=new int[N+10],*temp=new int[N+10];
	for(i=0;i<N;i++)
	{
		in>>l[i];
	}
	in.close();
	QueryPerformanceFrequency(&fre);//���ʱ��Ƶ��
	QueryPerformanceCounter(&start);
	merge_sort(l,temp,0,N-1);
	QueryPerformanceCounter(&end);
	dft=(double)(end.QuadPart-start.QuadPart)/(double)fre.QuadPart;
	cout<<str2<<str3<<dft*1000<<" ms\n";
	out<<str2<<str3<<dft*1000<<" ms\n";
	for(i=0;i<N;i++)//���ź������������ļ��� 
	{
		out<<l[i]<<" ";
	}
	out<<"\n";
	out.close();
}
int main()
{
	//set();//������ͬ��ģ���������  
	//����5�β�ͬ���ݹ�ģ�Ĳ��ԣ����ݹ�ģ�ֱ���100,1000,10000,100000,1000000 
	cout<<"��������\n";
	for(int j=0;j<5;j++)
	{
		switch(j)
		{
			case 0:
			{
				cout<<"���й�ģΪ100������\n"; 
				ifstream in1("num1.txt",ios::in); //�����ļ����������� 
				ofstream out1("num1_qout.txt",ios::out);//�����ļ��� д����ҽ��  
				ofstream out1_m("num1_mout.txt",ios::out); 
				test_qsort(in1,out1,100);
				in1.open("num1.txt",ios::in);//ע��������Ҫ�ٴδ��ļ� 
				test_merge(in1,out1_m,100); 
				break;
			}
			case 1:
			{
				cout<<"���й�ģΪ1000������\n"; 
				ifstream in2("num2.txt",ios::in); 
				ofstream out2("num2_qout.txt",ios::out);
				ofstream out2_m("num2_mout.txt",ios::out);
				test_qsort(in2,out2,1000);
				in2.open("num2.txt",ios::in); 
				test_merge(in2,out2_m,1000);
				break;
			}
			case 2:
			{
				cout<<"���й�ģΪ10000������\n"; 
				ifstream in3("num3.txt",ios::in); 
				ofstream out3("num3_qout.txt",ios::out);
				ofstream out3_m("num3_mout.txt",ios::out);
				test_qsort(in3,out3,10000);
				in3.open("num3.txt",ios::in); 
				test_merge(in3,out3_m,10000);
				break;
			}
			case 3:
			{
				cout<<"���й�ģΪ100000������\n"; 
				ifstream in4("num4.txt",ios::in); 
				ofstream out4("num4_qout.txt",ios::out);
				ofstream out4_m("num4_mout.txt",ios::out);
				test_qsort(in4,out4,100000);
				in4.open("num4.txt",ios::in); 
				test_merge(in4,out4_m,100000);
				break;
			}
			default:
			{
				cout<<"���й�ģΪ1000000������\n"; 
				ifstream in5("num5.txt",ios::in); 
				ofstream out5("num5_qout.txt",ios::out);
				ofstream out5_m("num5_mout.txt",ios::out);
				test_qsort(in5,out5,1000000);
				in5.open("num5.txt",ios::in); 
				test_merge(in5,out5_m,1000000);
				break;
			}
		} 
		cout<<"�������,�������Ѵ����ļ���\n";
	}
}
