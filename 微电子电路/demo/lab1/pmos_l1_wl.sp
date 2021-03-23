*Sample netlist for GSMC

.TEMP    25.0000    

.option abstol=1e-6 reltol=1e-6 post ingold

.MODEL NFET PMOS (LEVEL=2 VTO=-0.4 KP=2.7e-5
+ NSUB=1E17 TOX=20n)

* --- Voltage Sources ---
vdd   VDD  0 dc=1.8
vgs   g   0 -2   * 栅极一端接g  栅极另外一端接0 这里是栅极电压值
vds   d   0 dc=-2 
vbs	  b	  0 dc=1.8

* --- Inverter Subcircuit ---
Mnmos1 d g VDD 1.8 nfet W=6U L=6U
Mnmos2 d g VDD 1.8 nfet W=12u L=6U
Mnmos3 d g VDD 1.8 nfet W=18u L=6U
Mnmos4 d g VDD 1.8 nfet W=24u L=6U

* --- Transient Analysis ---
.dc vds -10 1.8 0.1 SWEEP vgs -5 1.8 2   *为了直观比较不同W/L下的电流曲线，这里将步长设为2
*直流分析  分析对象 下限 上限 步长 后面的表示给Vgs加电压

.print  i(Mnmos1) i(Mnmos2) i(Mnmos3) i(Mnmos4)

.end
