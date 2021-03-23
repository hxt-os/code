movl $0x4b87c8ca, %eax   #设置返回值为cookie
leal 0x28(%esp),%ebp   #恢复testn的ebp原栈帧
push $0x8048ce2        #返回后下一条指令的地址
ret  
