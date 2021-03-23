#include <iostream>
#include "BinNode.h"
#include "Tree.h"
#include "BinTree.h"
using namespace std;
int main(int argc, char** argv) 
{
	int N;
	cin>>N;
	int in[N],post[N],i=0;
	BinTree<int>* t=new BinTree<int>;
	for(i=0;i<N;i++)
	{
		cin>>post[i];
	}
	for(i=0;i<N;i++)
	{
		cin>>in[i];
	}
	BinNode<int>* root=t->CreatTree(in,0,N-1,post,0,N-1);
	t->Level(root);
	return 0;
}
