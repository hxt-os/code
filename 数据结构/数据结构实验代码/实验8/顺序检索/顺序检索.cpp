#include <iostream>
#include <fstream>
#include <string>
#include <cmath>
#include <ctime>
#include <windows.h>//������Windows������������̬���������á����Ͻṹ�ͳ���ʶ���֣�������Windows�ļ��е�һ����Ҫ���֡�
using namespace std;
LARGE_INTEGER fre;
LARGE_INTEGER start,end; 
double dft=0;//ʱ�� 
int max0=1002000;//�������ֵ 
string str1="�Ƚϴ���:\t",str2="\t����ʱ��:\t",str3="���ҳɹ�\t",str4="û���ҵ�\t"; 
int a0[110]={0},b0[110]={0};//�����ҵ����ݴ�����飨�ɹ����Һ�ʧ�ܲ��ң�
int l[1002000];//�������ݴ������ 
int count=0;//��¼���Ҵ��� 
#define random(x) (int)(((double)rand()/RAND_MAX)*pow(10,rand()%x))
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
bool SeqSearch(int n,int key)//˳��������� 
{
	int i=0;count=0;
	bool flag=false; 
	//��ȷ�Ȳ���t_s=clock();
	QueryPerformanceFrequency(&fre);//���ʱ��Ƶ��
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
void test(ifstream &in,ofstream &out,int N)//���Ժ��� 
{
	int i=0; 
	for(i=0;i<N;i++)
	{
		in>>l[i];
	}
	in.close();
	srand(time(NULL)); //����ʱ������
	//���������ҵ����� 
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
		a0[i]=l[k];//�����������ȡֵ �����ҳɹ� 
		b0[i]=-rand()%max0;//ȡ����û�еĸ�ֵ ������ʧ�� 
	}
	double min_=100,max_=0,ave_=0;
	out<<"100�γɹ�����\n";
	//100�γɹ���ѯ 
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
	out<<"��С����ʱ��:   "<<min_<<" ms\t"<<"������ʱ�䣺  "<<max_<<" ms\t"<<"ƽ������ʱ�䣺  "<<ave_<<" ms"; 
	out<<"\n";
	min_=190;max_=0;ave_=0;
	out<<"100��ʧ�ܲ���\n";
	//100��ʧ�ܲ�ѯ  
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
	out<<"��С����ʱ��:   "<<min_<<" ms\t"<<"������ʱ�䣺  "<<max_<<" ms\t"<<"ƽ������ʱ�䣺  "<<ave_<<" ms"; 
	out<<"\n";
	out.close();
}
int main()
{
	//set();//������ͬ��ģ���������  
	//����5�β�ͬ���ݹ�ģ�Ĳ��ԣ����ݹ�ģ�ֱ���100,1000,10000,100000,1000000 
	for(int j=4;j<5;j++)
	{
		switch(j)
		{
			case 0:
			{
				cout<<"���й�ģΪ100�Ĳ���\n"; 
				ifstream in1("num1.txt",ios::in); //�����ļ����������� 
				ofstream out1("num1_out.txt",ios::out);//�����ļ��� д����ҽ�� 
				test(in1,out1,100);
				break;
			}
			case 1:
			{
				cout<<"���й�ģΪ1000�Ĳ���\n"; 
				ifstream in2("num2.txt",ios::in); 
				ofstream out2("num2_out.txt",ios::out);
				test(in2,out2,1000);
				break;
			}
			case 2:
			{
				cout<<"���й�ģΪ10000�Ĳ���\n"; 
				ifstream in3("num3.txt",ios::in); 
				ofstream out3("num3_out.txt",ios::out);
				test(in3,out3,10000);
				break;
			}
			case 3:
			{
				cout<<"���й�ģΪ100000�Ĳ���\n"; 
				ifstream in4("num4.txt",ios::in); 
				ofstream out4("num4_out.txt",ios::out);
				test(in4,out4,100000);
				break;
			}
			default:
			{
				cout<<"���й�ģΪ1000000�Ĳ���\n"; 
				ifstream in5("num5.txt",ios::in); 
				ofstream out5("num5_out.txt",ios::out);
				test(in5,out5,1000000);
				break;
			}
		} 
		cout<<"���ҽ���,�������Ѵ����ļ���\n";
	}
}
