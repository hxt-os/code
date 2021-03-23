*AC Analysis for INV

.TEMP    25.0000 

.option abstol=1e-6 reltol=1e-6 post ingold

.lib 'gd018.l' TT

* --- Voltage Sources ---
vdd   VDD  0 dc=1.8
* --- Inverter Subcircuit ---
Mpmos1 vo1 vi1 VDD VDD PCH W=30U L=6U
Mnmos1 vo1 vi1 GND GND NCH W=30U L=6U
Mpmos2 vo2 vo1 VDD VDD PCH W=30U L=6U
Mnmos2 vo2 vo1 GND GND NCH W=30U L=6U
Mpmos3 vi1 vo2 VDD VDD PCH W=30U L=6U
Mnmos3 vi1 vo2 GND GND NCH W=30U L=6U

* --- Transient Analysis ---
.OPTIONS	POST
.ic v(vi1)=0
.tran		0.01ns	500ns
.measure tran tphl1 trig v(vo2) val=0.9 rise=1 targ v(vi1) val=0.9 fall=2
.measure tran tplh1 trig v(vo2) val=0.9 fall=1 targ v(vi1) val=0.9 rise=2
.measure tran tphl3 trig v(vo1) val=0.9 rise=1 targ v(vo2) val=0.9 fall=1
.measure tran tplh3 trig v(vo1) val=0.9 fall=1 targ v(vo2) val=0.9 rise=1
.measure tran tphl2 trig v(vi1) val=0.9 rise=1 targ v(vo1) val=0.9 fall=1
.measure tran tplh2 trig v(vi1) val=0.9 fall=1 targ v(vo1) val=0.9 rise=1
.measure tran tp param='(tphl2+tplh3+tphl1+tplh2+tphl3+tplh1)/6'  

.end
