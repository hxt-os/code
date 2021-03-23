#include <iostream>
#include <algorithm>
#include "BSTTree.h" 
#include "Tree.h"
#include "BSTNode.h"
int main(int argc, char** argv) 
{
	int N;
	while(cin>>N)
	{
		int value[N],i=0,level[N];
		for(i=0;i<N;i++)
		{
			cin>>value[i];
			level[i]=0;
		}
		sort(value,value+N);
		BSTTree<int>* t=new BSTTree<int>;
		t->CreatTree(value,0,N-1,0,level);
		for(i=0;i<N;i++)
		{
			cout<<level[i]<<" ";
		}
	}
}
