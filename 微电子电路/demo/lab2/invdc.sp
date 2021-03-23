*INV DC Analysis

.TEMP    25.0000 

.option abstol=1e-6 reltol=1e-6 post ingold

.lib 'gd018.l' TT

* --- Voltage Sources ---
vdd   VDD  0 dc=2
vin   vi 0 dc=0.9
.param dwl=30u
* --- Inverter Subcircuit ---
Mpmos1 vo vi VDD VDD PCH W=36u L=6U
Mnmos1 vo vi GND GND NCH W=dwl L=6U
*漏极、栅极、源极、衬底

* --- Transient Analysis ---
.dc vin 0 1.8 0.01 sweep dwl 30u 3u 6u
*.ac  自己增长，连续的量

.print dc v(vi) v(vo) 

.end
