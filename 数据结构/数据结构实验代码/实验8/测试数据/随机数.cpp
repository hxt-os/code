#include <iostream>
#include <fstream>
#include <algorithm>
#include <time.h>
using namespace std;
int max0=1002000;
int a0[110],b0[110];//待查找的数据存放数组（成功查找和失败查找）
int l[1002000];//测试数据存放数组 
int count=0;//记录查找次数 
int main()
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
