.TEMP    25.0000 
.option abstol=1e-6 reltol=1e-6 post ingold
.lib 'gd018.l' TT
*VDD
.global 1
V1 1 0 dc=1.8

.subckt nand in1 in2 out 
*nand
Mp1 out in1 1 1 PCH W=5u L=1u
Mp2 out in2 1 1 PCH W=5u L=1u
Mn1 out in1 vn 0 NCH W=2u L=1u
Mn2 vn in2 0 0 NCH W=2u L=1u
.ends


.subckt nor in1 in2 out
*nor
Mp1 vn in1 1 1 PCH W=5u L=1u
Mp2 out in2 vn 1 PCH W=5u L=1u
Mn1 out in1 0 0 NCH W=2u L=1u
Mn2 out in2 0 0 NCH W=2u L=1u
.ends

.subckt inv in out 
*inv
Mpmos out in 1 1 PCH W=5U L=1U
Mnmos out in 0 0 NCH W=2U L=1U
.ends

Vclk clk 0 pulse(0 1.8 0 10ns 10ns 40ms 80ms)
Vin D 0 pulse(0 1.8 15ms 10ns 10ns 10ms 40ms)

*基于RS锁存器的D触发器
X0 D DF inv
X1 DF clk out1 nand
X2 out1 temp1 inv
X3 temp1 QF Q nor
X4 D clk out2 nand
X5 out2 temp2 inv
X6 temp2 Q QF nor

.trans 1m 100m

.op
.end
