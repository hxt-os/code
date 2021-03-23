*AC Analysis for INV
.TEMP    25.0000 
.option abstol=1e-6 reltol=1e-6 post ingold

.lib 'gd018.l' TT

* --- Voltage Sources ---
vdd   VDD  0 dc=1.8
vin   vi 0 PULSE(0 1.8 0ns 0.5ns 0.5ns 5ns 10ns)
*输入高电平为1.8V，低电平为0V，0延迟，上升延迟0.5ns，下降延迟0.5ns,脉冲宽度，周期

* --- Inverter Subcircuit ---
Mpmos vo vi VDD VDD PCH W=width L=6U
Mnmos vo vi GND GND NCH W=30U L=6U

.param width=4u
* --- Transient Analysis ---
.OPTIONS	POST
.tran 0.01n 100ns sweep width 4u 100u 0.5u *扫描宽度，在4u到100u之间以0.5u为步长变化
.measure tran vmax max v(vo) from 0ns to 20ns
.measure tran vmin min v(vo) from 0ns to 20ns
.measure tran tphl trig v(vi) val='0.5*(vmax-vmin)+vmin' rise=1 targ v(vo) val='0.5*(vmax-vmin)+vmin' fall=1
.measure tran tplh trig v(vi) val='0.5*(vmax-vmin)+vmin' fall=1 targ v(vo) val='0.5*(vmax-vmin)+vmin' rise=1
.measure tran tp param='0.5*(tphl+tplh)'


.end
