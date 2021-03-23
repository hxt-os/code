#include <iostream>
#include <fstream>
#include <algorithm>
#include <string>
#include <cmath>
#include <ctime>
#include <windows.h>//定义了Windows的所有资料型态、函数调用、资料结构和常数识别字，它们是Windows文件中的一个重要部分。
using namespace std;
LARGE_INTEGER fre;
LARGE_INTEGER start,end; 
double dft=0;//时间 
int max0=1002000;//数组最大值 
string str1="冒泡排序已完成\t",str3="排序时间为:   "; 
void set()//产生不同规模的随机数据，并存入文件 
{
	int i=0; 
	srand(time(NULL)); //设置时间种子 
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
void test(ifstream &in,ofstream &out,int N)//测试函数 
{
	int i=0;
	int *l=new int[N+10],*temp=new int[N+10];
	for(i=0;i<N;i++)
	{
		in>>l[i];
	}
	in.close();
	QueryPerformanceFrequency(&fre);//获得时钟频率
	QueryPerformanceCounter(&start);
	bub_sort(l,N);
	QueryPerformanceCounter(&end);
	dft=(double)(end.QuadPart-start.QuadPart)/(double)fre.QuadPart;
	cout<<str1<<str3<<dft*1000<<" ms\n";
	out<<str1<<str3<<dft*1000<<" ms\n";
	for(i=0;i<N;i++)//将排好序的数组存入文件中 
	{
		out<<l[i]<<" ";
	}
	out.close();
}
int main()
{
	//set();//产生不同规模的随机数据  
	//进行5次不同数据规模的测试，数据规模分别是100,1000,10000,100000,1000000 
	for(int j=0;j<5;j++)
	{
		switch(j)
		{
			case 0:
			{
				cout<<"进行规模为100的排序\n"; 
				ifstream in1("num1.txt",ios::in); //利用文件流读入数据 
				ofstream out1("num1_out.txt",ios::out);//利用文件流 写入查找结果 
				test(in1,out1,100);
				break;
			}
			case 1:
			{
				cout<<"进行规模为1000的排序\n"; 
				ifstream in2("num2.txt",ios::in); 
				ofstream out2("num2_out.txt",ios::out);
				test(in2,out2,1000);
				break;
			}
			case 2:
			{
				cout<<"进行规模为10000的排序\n"; 
				ifstream in3("num3.txt",ios::in); 
				ofstream out3("num3_out.txt",ios::out);
				test(in3,out3,10000);
				break;
			}
			case 3:
			{
				cout<<"进行规模为100000的排序\n"; 
				ifstream in4("num4.txt",ios::in); 
				ofstream out4("num4_out.txt",ios::out);
				test(in4,out4,100000);
				break;
			}
			default:
			{
				cout<<"进行规模为1000000的排序\n"; 
				ifstream in5("num5.txt",ios::in); 
				ofstream out5("num5_out.txt",ios::out);
				test(in5,out5,1000000);
				break;
			}
		} 
		cout<<"排序结束,输出结果已存入文件中\n";
	}
}
