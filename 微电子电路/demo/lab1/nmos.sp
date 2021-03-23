*Sample netlist for GSMC

.TEMP    25.0000    

.option abstol=1e-6 reltol=1e-6 post ingold

.lib 'gd018.l' TT     *库
*.MODEL NFET NMOS (LEVEL=1 VTO=0.4 KP=8.64E-6
*+ NSUB=1E17 TOX=20n)
.model nmos nmos level=2 ld=0.15u tox=200e-10 vto=0.74 kp=8e-5
+nsub=5.37e15 gamma=0.54 phi=0.6 u0=656 uexp=0.157 ucirt=31444
+delta=2.34 vmax=55261 xj=0.25u lambda=0.037 nfs=1e12 neff=1.001
+nss=1e11 tpg=1 rsh=70 pb=0.58 cgdo=4.3e-10 cgso=4.3e-10 cj=0.0003 mj=0.66 
+cjsw=8e-10 mjsw=0.24

* --- Voltage Sources ---
vdd   VDD  0 dc=1.8
vgs   g   0 0  * 栅极一端接g  栅极另外一端接0 
vds   d   0 dc=0.9  *漏极和0相连，电压值为0.9
vbs	  b	  0 dc=0    *衬底和0相连，电压值为0

* --- Inverter Subcircuit ---
Mnmos1 d g 0 b nch W=30U L=6U
Mnmos2 d g 0 b nch W=36U L=6U
Mnmos3 d g 0 b nch W=42U L=6U
*漏极、栅极、源极、衬底
* --- Transient Analysis ---
.dc vds 0 15 0.01 SWEEP vgs 0 1.8 0.3 
*直流分析  分析对象 下限 上限 步长 后面的表示给Vgs加电压

.print dc  v(d) i(Mnmos1) i(Mnmos2) i(Mnmos3)

.end
