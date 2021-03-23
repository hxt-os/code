#include <iostream>
#include <fstream>
#include <string>
#include <cmath>
#include <ctime>
#include <windows.h>//定义了Windows的所有资料型态、函数调用、资料结构和常数识别字，它们是Windows文件中的一个重要部分。
using namespace std;
LARGE_INTEGER fre;
LARGE_INTEGER start,end; 
double dft=0;//时间 
int max0=1002000;//数组最大值 
string str1="比较次数:\t",str2="\t查找时间:\t",str3="查找成功\t",str4="没有找到\t"; 
int a0[110]={0},b0[110]={0};//待查找的数据存放数组（成功查找和失败查找）
int l[1002000];//测试数据存放数组 
int count=0;//记录查找次数 
#define random(x) (int)(((double)rand()/RAND_MAX)*pow(10,rand()%x))
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
bool SeqSearch(int n,int key)//顺序检索函数 
{
	int i=0;count=0;
	bool flag=false; 
	//精确度不够t_s=clock();
	QueryPerformanceFrequency(&fre);//获得时钟频率
	QueryPerformanceCounter(&start);
	while(i<n)
	{
		if(l[i]==key) 
		{
			flag=true;break;
		}
		i++;
		count++;
	}
	QueryPerformanceCounter(&end);
	dft=(double)(end.QuadPart-start.QuadPart)/(double)fre.QuadPart;
	return flag;
}
void test(ifstream &in,ofstream &out,int N)//测试函数 
{
	int i=0; 
	for(i=0;i<N;i++)
	{
		in>>l[i];
	}
	in.close();
	srand(time(NULL)); //设置时间种子
	//产生待查找的数据 
	for(i=0;i<100;i++)
	{
		int k;
		if(N==100000)
		{
			k=random(6);
		}
		else if(N==1000000) 
		{
			k=random(7);
		}
		else k=rand()%(N-1);
		a0[i]=l[k];//从数组中随机取值 ，查找成功 
		b0[i]=-rand()%max0;//取数组没有的负值 ，查找失败 
	}
	double min_=100,max_=0,ave_=0;
	out<<"100次成功查找\n";
	//100次成功查询 
	for(i=0;i<100;i++)
	{
		bool f=SeqSearch(N,a0[i]);
		min_=min(min_,dft*1000);
		max_=max(max_,dft*1000);
		ave_+=dft*10;
		if(f) 
		{
			cout<<str3<<a0[i]<<"\t"<<str1<<count<<str2<<dft*1000<<" ms\n";
			out<<str3<<a0[i]<<"\t"<<str1<<count<<str2<<dft*1000<<" ms\n";
		}
		else 
		{
			cout<<str4<<a0[i]<<"\t"<<str1<<count<<str2<<dft*1000<<" ms\n";
			out<<str4<<a0[i]<<"\t"<<str1<<count<<str2<<dft*1000<<" ms\n";
		} 
	}
	out<<"最小查找时间:   "<<min_<<" ms\t"<<"最大查找时间：  "<<max_<<" ms\t"<<"平均查找时间：  "<<ave_<<" ms"; 
	out<<"\n";
	min_=190;max_=0;ave_=0;
	out<<"100次失败查找\n";
	//100次失败查询  
	for(i=0;i<100;i++)
	{
		bool f=SeqSearch(N,b0[i]);
		min_=min(min_,dft*1000);
		max_=max(max_,dft*1000);
		ave_+=dft*10;
		if(f) 
		{
			cout<<str3<<b0[i]<<"\t"<<str1<<count<<str2<<dft*1000<<" ms\n";
			out<<str3<<b0[i]<<"\t"<<str1<<count<<str2<<dft*1000<<" ms\n";
		}
		else 
		{
			cout<<str4<<b0[i]<<"\t"<<str1<<count<<str2<<dft*1000<<" ms\n";
			out<<str4<<b0[i]<<"\t"<<str1<<count<<str2<<dft*1000<<" ms\n";
		}
	}
	out<<"最小查找时间:   "<<min_<<" ms\t"<<"最大查找时间：  "<<max_<<" ms\t"<<"平均查找时间：  "<<ave_<<" ms"; 
	out<<"\n";
	out.close();
}
int main()
{
	//set();//产生不同规模的随机数据  
	//进行5次不同数据规模的测试，数据规模分别是100,1000,10000,100000,1000000 
	for(int j=4;j<5;j++)
	{
		switch(j)
		{
			case 0:
			{
				cout<<"进行规模为100的查找\n"; 
				ifstream in1("num1.txt",ios::in); //利用文件流读入数据 
				ofstream out1("num1_out.txt",ios::out);//利用文件流 写入查找结果 
				test(in1,out1,100);
				break;
			}
			case 1:
			{
				cout<<"进行规模为1000的查找\n"; 
				ifstream in2("num2.txt",ios::in); 
				ofstream out2("num2_out.txt",ios::out);
				test(in2,out2,1000);
				break;
			}
			case 2:
			{
				cout<<"进行规模为10000的查找\n"; 
				ifstream in3("num3.txt",ios::in); 
				ofstream out3("num3_out.txt",ios::out);
				test(in3,out3,10000);
				break;
			}
			case 3:
			{
				cout<<"进行规模为100000的查找\n"; 
				ifstream in4("num4.txt",ios::in); 
				ofstream out4("num4_out.txt",ios::out);
				test(in4,out4,100000);
				break;
			}
			default:
			{
				cout<<"进行规模为1000000的查找\n"; 
				ifstream in5("num5.txt",ios::in); 
				ofstream out5("num5_out.txt",ios::out);
				test(in5,out5,1000000);
				break;
			}
		} 
		cout<<"查找结束,输出结果已存入文件中\n";
	}
}
