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

* s0 
Vs0 s0 0 pulse(0 1.8 0 10ns 10ns 20ms 40ms)
Vs0f s0f 0 pulse(0 1.8 20ms 10ns 10ns 20ms 40ms)   *看作s0的取反

* s1
Vs1 s1 0 pulse(0 1.8 0 10ns 10ns 10ms 20ms)
Vs1f s1f 0 pulse(0 1.8 10ms 10ns 10ns 10ms 20ms)   *看作s1的取反

*input d
Vd0 d0 0 pulse(0 1.8 0 10ns 10ns 10ms 20ms)
Vd1 d1 0 pulse(0 1.8 10ms 10ns 10ns 10ms 20ms)
Vd2 d2 0 pulse(0 1.8 0 10ns 10ns 20ms 40ms)
Vd3 d3 0 pulse(0 1.8 20ms 10ns 10ns 20ms 40ms)

Mn0 d3 s1 t0 0 nmos W=2u L=1u
Mn1 t0 s0 vo 0 nmos W=2u L=1u

Mn2 d2 s1 t1 0 nmos W=2u L=1u
Mn3 t1 s0f vo 0 nmos W=2u L=1u

Mn4 d1 s1f t2 0 nmos W=2u L=1u
Mn5 t2 s0 vo 0 nmos W=2u L=1u

Mn6 d0 s1f t3 0 nmos W=2u L=1u
Mn7 t3 s0f vo 0 nmos W=2u L=1u
.trans 1ms 100ms
.op
.end
