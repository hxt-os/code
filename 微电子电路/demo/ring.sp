*AC Analysis for Ring Oscillator (RO)

.TEMP    25.0000 

.option abstol=1e-6 reltol=1e-6 post ingold

.lib 'gd018.l' TT

* --- Voltage Sources ---
vdd   VDD  0 dc=1.8

*************************************************
* We don't need input voltage this time
*vin   vi 0 PULSE(0 1.8 0ns 0.5ns 0.5ns 5ns 10ns)
*************************************************

* --- Inverter Subcircuit ---
Mpmos1 vo1 vi1 VDD VDD PCH W=30U L=6U
Mnmos1 vo1 vi1 GND GND NCH W=30U L=6U

* --- Inverter Subcircuit ---
Mpmos2 vo2 vo1 VDD VDD PCH W=30U L=6U
Mnmos2 vo2 vo1 GND GND NCH W=30U L=6U

* --- Inverter Subcircuit ---
Mpmos3 vi1 vo2 VDD VDD PCH W=30U L=6U
Mnmos3 vi1 vo2 GND GND NCH W=30U L=6U

* --- Transient Analysis ---
.OPTIONS	POST
.ic v(vi1)=0 
.tran		0.01ns	1000ns

.end
