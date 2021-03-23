#include <iostream>
#include "list.h"
#include "alist.h"
#include <cmath>
using namespace std;
int main(int argc, char** argv)
{
	int n,value,i=0;
	cin>>n;
	alist<int> a(n); 
	for(i=0;i<n;i++)//ÊäÈëÊý×Ö 
	{
		cin>>value;
		a.append(value);
	}
	int min=a.min_cha();
	cout<<min<<endl;
	return 0;
}

