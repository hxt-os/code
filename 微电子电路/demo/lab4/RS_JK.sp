.TEMP    25.0000 
.option abstol=1e-6 reltol=1e-6 post ingold
.lib 'gd018.l' TT
*VDD
.global 1
V1 1 0 dc=1.8

.subckt nand2 in1 in2 out 
*nand2
Mp1 out in1 1 1 PCH W=5u L=1u
Mp2 out in2 1 1 PCH W=5u L=1u
Mn1 out in1 vn 0 NCH W=2u L=1u
Mn2 vn in2 0 0 NCH W=2u L=1u
.ends

.subckt nand3 in1 in2 in3 out 
*nand3 pmos并联 nmos串联
Mp1 out in1 1 1 PCH W=5u L=1u
Mp2 out in2 1 1 PCH W=5u L=1u
Mp3 out in3 1 1 PCH W=5u L=1u
Mn1 out in1 vn1 0 NCH W=2u L=1u
Mn2 vn1 in2 vn2 0 NCH W=2u L=1u
Mn3 vn2 in2 0 0 NCH W=2u L=1u
.ends


Vclk clk 0 pulse(0 1.8 0 10ns 10ns 40ms 80ms)
Vin1 J 0 pulse(0 1.8 5ms 10ns 10ns 10ms 40ms)
Vin2 K 0 pulse(0 1.8 25ms 10ns 10ns 20ms 50ms)

*基于RS锁存器的JK锁存器
X1 QF J clk out1 nand3
X2 out1 QF Q nand2
X3 clk K Q out2 nand3
X4 out2 Q QF nand2

.trans 1m 100m

.op
.end
