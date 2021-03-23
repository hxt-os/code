*NAND gate hspice file

.TEMP    25.0000 

.option abstol=1e-6 reltol=1e-6 post ingold

.lib 'gd018.l' TT

*VDD
V1 1 0 dc=1.8

*===================================
*VA and VB is the input voltage
*Vout is at node vo
*===================================

*Input A 
VA A 0 dc=0

*Input B
VB B 0 0

.param width=2u
*Two P-types in Parallel
Mp1 vo A 1 1 PCH W=width L=1u
Mp2 vo B 1 1 PCH W=width L=1u

*Two N-types in Series
Mn1 vo A vn 0 NCH W=2u L=1u
Mn2 vn B 0 0 NCH W=2u L=1u

*------------------------------------------------------
*Step the voltage VA and VB from 0 to 1.8
.dc VB START=0 STOP=1.8 STEP=.01 SWEEP width 4u 50u 2u *SWEEP VA  0 1.8 0.2
*------------------------------------------------------
*.trans 1ms 100ms
*------------------------------------------------------
*.IC V(A) = 1.8
*.dc VB START=0 STOP=1.8 STEP=.01
*------------------------------------------------------

.op
.end
