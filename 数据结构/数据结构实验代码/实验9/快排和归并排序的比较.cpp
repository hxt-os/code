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
string str1="快速排序已完成\t",str3="排序时间为:   ",str2="归并排序已完成\t"; 
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
void Quick_sort(int *a,int i,int j)
{
	if(j<=i) return; 
	int p=(i+j)/2;//去中间位置为轴 
	swap(a[p],a[j]);// 将轴放到末尾
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
void test_qsort(ifstream &in,ofstream &out,int N)//测试函数 
{
	out<<"规模为 "<<N<<" 的快速排序：\n"; 
	int i=0;
	int *l=new int[N+10]; 
	for(i=0;i<N;i++)
	{
		in>>l[i];
	}
	in.close();
	QueryPerformanceFrequency(&fre);//获得时钟频率
	QueryPerformanceCounter(&start);
	Quick_sort(l,0,N-1);
	QueryPerformanceCounter(&end);
	dft=(double)(end.QuadPart-start.QuadPart)/(double)fre.QuadPart;
	cout<<str1<<str3<<dft*1000<<" ms\n";
	out<<str1<<str3<<dft*1000<<" ms\n";
	for(i=0;i<N;i++)//将排好序的数组存入文件中 
	{
		out<<l[i]<<" ";
	}
	out<<"\n";
	out.close();
}
void test_merge(ifstream &in,ofstream &out,int N)//测试函数 
{
	out<<"规模为 "<<N<<" 的归并排序：\n"; 
	int i=0;
	int *l=new int[N+10],*temp=new int[N+10];
	for(i=0;i<N;i++)
	{
		in>>l[i];
	}
	in.close();
	QueryPerformanceFrequency(&fre);//获得时钟频率
	QueryPerformanceCounter(&start);
	merge_sort(l,temp,0,N-1);
	QueryPerformanceCounter(&end);
	dft=(double)(end.QuadPart-start.QuadPart)/(double)fre.QuadPart;
	cout<<str2<<str3<<dft*1000<<" ms\n";
	out<<str2<<str3<<dft*1000<<" ms\n";
	for(i=0;i<N;i++)//将排好序的数组存入文件中 
	{
		out<<l[i]<<" ";
	}
	out<<"\n";
	out.close();
}
int main()
{
	//set();//产生不同规模的随机数据  
	//进行5次不同数据规模的测试，数据规模分别是100,1000,10000,100000,1000000 
	cout<<"快速排序：\n";
	for(int j=0;j<5;j++)
	{
		switch(j)
		{
			case 0:
			{
				cout<<"进行规模为100的排序\n"; 
				ifstream in1("num1.txt",ios::in); //利用文件流读入数据 
				ofstream out1("num1_qout.txt",ios::out);//利用文件流 写入查找结果  
				ofstream out1_m("num1_mout.txt",ios::out); 
				test_qsort(in1,out1,100);
				in1.open("num1.txt",ios::in);//注意这里需要再次打开文件 
				test_merge(in1,out1_m,100); 
				break;
			}
			case 1:
			{
				cout<<"进行规模为1000的排序\n"; 
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
				cout<<"进行规模为10000的排序\n"; 
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
				cout<<"进行规模为100000的排序\n"; 
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
				cout<<"进行规模为1000000的排序\n"; 
				ifstream in5("num5.txt",ios::in); 
				ofstream out5("num5_qout.txt",ios::out);
				ofstream out5_m("num5_mout.txt",ios::out);
				test_qsort(in5,out5,1000000);
				in5.open("num5.txt",ios::in); 
				test_merge(in5,out5_m,1000000);
				break;
			}
		} 
		cout<<"排序结束,输出结果已存入文件中\n";
	}
}
