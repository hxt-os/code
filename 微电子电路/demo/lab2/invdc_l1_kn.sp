*INV DC Analysis

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

* --- Voltage Sources ---
vdd   VDD  0 dc=2.0
vin   vi 0 dc=0.9
.param wn=36U
* --- Inverter Subcircuit ---
Mpmos1 vo vi VDD VDD pmos W=36u L=6U
Mnmos1 vo vi GND GND nmos W=wn L=6U
*漏极、栅极、源极、衬底

* --- Transient Analysis ---
.dc vin 0 1.8 0.01 sweep wn 36u 18u 6u
*.ac  自己增长，连续的量

.print dc v(vi) v(vo)

.end
