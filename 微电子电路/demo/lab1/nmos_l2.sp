*Sample netlist for GSMC

.TEMP    25.0000    

.option abstol=1e-6 reltol=1e-6 post ingold

.MODEL NFET NMOS (LEVEL=2 VTO=0.4 KP=8.64E-6
+ NSUB=1E17 TOX=20n)

* --- Voltage Sources ---
vdd   VDD  0 dc=1.8
vgs   g   0 2   * 栅极一端接g  栅极另外一端接0 这里是栅极电压值
vds   d   0 dc=2 
vbs	  b	  0 dc=0

* --- Inverter Subcircuit ---
Mnmos d g 0 b nfet W=30u L=6U

* --- Transient Analysis ---
.dc vds 0 10 0.1 SWEEP vgs 0 5 1
*直流分析  分析对象 下限 上限 步长 后面的表示给Vgs加电压

.print dc v(d) i(Mnmos) 

.end
