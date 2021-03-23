*Sample netlist for GSMC

.TEMP    25.0000    

.option abstol=1e-6 reltol=1e-6 post ingold

.lib 'gd018.l' TT     *库

* --- Voltage Sources ---
vdd   VDD  0 dc=1.8
vgs   g   0 0   * 栅极一端接g  栅极另外一端接0
vds   d   0 dc=-0.9  
vbs	  b	  0 dc=0

* --- Inverter Subcircuit ---
Mpmos d g VDD b PCH W=30U L=6U

* --- Transient Analysis ---
.dc vds -1.8 0 0.01 SWEEP vgs -1.8 0 0.2
*直流分析  分析对象 下限 上限 步长 后面的表示给Vgs加电压

.print dc v(d) i(Mpmos) 

.end
