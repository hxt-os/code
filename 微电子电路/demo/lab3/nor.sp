*NAND gate hspice file
.TEMP    25.0000 
.option abstol=1e-6 reltol=1e-6 post ingold
.lib 'gd018.l' TT
*VDD
V1 1 0 dc=1.8
*Input A 
VA A 0 pulse(0 1.8 0 10ns 10ns 20ms 40ms)

*Input B
VB B 0 pulse(0 1.8 0 10ns 10ns 10ms 20ms)

*Two P-types in Parallel
Mp1 vn A 1 1 PCH W=5u L=1u
Mp2 vo B vn 1 PCH W=5u L=1u

*Two N-types in Series
Mn1 vo A 0 0 NCH W=2u L=1u
Mn2 vo B 0 0 NCH W=2u L=1u

.trans 1ms 100ms
.op
.end
