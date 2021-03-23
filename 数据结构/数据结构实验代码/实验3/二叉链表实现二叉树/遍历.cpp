#include <iostream>
using namespace std;
//不用建树 
void post_visit(char a1[],int s1,int e1,char a2[],int s2,int e2)
{
	char root=a1[s1];
	int i=s2;//注意起始位置 
	while(a1[s1]!=a2[i]&&i<e2)//找出中序遍历中根节点位置 
	{
		i++;
	}
	if(s1>e1||s2>e2) return ;//只包含root的树 
	post_visit(a1,s1+1,s1+i-s2,a2,s2,i-1);//左子树后序
	post_visit(a1,s1+i-s2+1,e1,a2,i+1,e2);//右子树后序
	cout<<root;
	return ; 
}
int main()
{
	int n;
	while(cin>>n,n>0)
	{
		cin.get();
		char a1[n],a2[n];
		for(int i=0;i<n;i++)    cin>>a1[i];
	    for(int j=0;j<n;j++)    cin>>a2[j]; 
		post_visit(a1,0,n-1,a2,0,n-1);
		cout<<endl;	
	}
	return 0;	
} 
/*void visit(int a1[],int s1,int e1,int a2[],int s2,int e2)
{
	int root=a2[e2];
	int i=s1;//注意起始位置 
	while(a2[e2]!=a1[i]&&i<e2)//找出中序遍历中根节点位置 
	{
		i++;
	}
	if(s1>e1||s2>e2) return ;//只包含root的树 
	cout<<root;
	visit(a1,s1+i-1,e1,a2,s2,s2+i-1);
	visit(a1,s1+i+1,e1,a2,s2+i+1,e2-1);
	return ; 
}*/

