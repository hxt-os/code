*NAND gate hspice file

.TEMP    25.0000 

.option abstol=1e-6 reltol=1e-6 post ingold

.model nmos nmos level=1 ld=0.15u tox=200e-10 vto=0.74 kp=8e-5
+nsub=5.37e15 gamma=0.54 phi=0.6 u0=656 uexp=0.157 ucirt=31444
+delta=2.34 vmax=55261 xj=0.25u lambda=0.037 nfs=1e12 neff=1.001
+nss=1e11 tpg=1 rsh=70 pb=0.58 cgdo=4.3e-10 cgso=4.3e-10 cj=0.0003 mj=0.66 
+cjsw=8e-10 mjsw=0.24

.model pmos pmos level=1 ld=0.15u tox=200e-10 vto=-0.74 kp=2.7e-5
+nsub=4.33e15 gamma=0.58 phi=0.6 u0=262 uexp=0.324 ucirt=65720
+delta=1.79 vmax=25694 xj=0.25u lambda=0.061 nfs=1e12 neff=1.001
+nss=1e11 tpg=-1 rsh=121 pb=0.64 cgdo=4.3e-10 cgso=4.3e-10 cj=0.0005 mj=0.51
+cjsw=1.35e-10 mjsw=0.24

*VDD
V1 1 0 dc=1.8

*Input A 
VA A 0 pulse(0 1.8 0 10ns 10ns 20ms 40ms)
VAF AF 0 pulse(0 1.8 20ms 10ns 10ns 20ms 40ms)   *看作A的取反

*Input B
VB B 0 pulse(0 1.8 0 10ns 10ns 10ms 20ms)
VBF BF 0 pulse(0 1.8 10ms 10ns 10ns 10ms 20ms)   *看作B的取反

*反相器0
Mp0 nvo A 1 1 pmos W=5u L=1u
Mn0 nvo A 0 0 nmos W=2u L=1u

*传输门
Mp1 B A vo 1 pmos W=5u L=1u
Mn1 B nvo vo 0 nmos W=2u L=1u

*反相器1
Mp2 vo B A 1 pmos W=5u L=1u
Mn2 vo B nvo 0 nmos W=2u L=1u

.trans 1ms 100ms
.op
.end
