*HW 6, Problem 1, Determination of SNM graphically
*ECE 559, Fall 2009, Purdue University

.TEMP	25.0000
.lib 'gd018.l' TT

.GLOBAL VDD!

.PARAM VDD  = 2.5
.PARAM L	= 300n

VVDD!  VDD! 0	DC=VDD *定义全局变量VDD!的电压值

.PARAM WN = 1800n
.PARAM WP = '3*WN'

.PARAM WNA = 450n

.PARAM U = 0
.PARAM UL  = '-VDD/sqrt(2)'
.PARAM UH  = ' VDD/sqrt(2)'

.PARAM BITCAP = 1e-12

.OPTION POST

CBL BLB 0 BITCAP 
CBLB BL 0 BITCAP

*反相器0
MPL QD QB VDD! VDD! PCH L='L' W='WP'
+AD='WP*2.5*L' AS='WP*2.5*L' PD='2*WP+5*L' PS='2*WP+5*L'
+M=1
MNL QD QB 0 0	NCH L='L' W='WN'
+AD='WN*2.5*L' AS='WN*2.5*L' PD='2*WN+5*L' PS='2*WN+5*L'
+M=1
 

*反相器1
MPR QBD Q VDD! VDD! PCH L='L' W='WP'
+AD='WP*2.5*L' AS='WP*2.5*L' PD='2*WP+5*L' PS='2*WP+5*L'
+M=1
MNR QBD Q 0 0	NCH L='L' W='WN'
+AD='WN*2.5*L' AS='WN*2.5*L' PD='2*WN+5*L' PS='2*WN+5*L'
+M=1

*传输门
MNAL BLB WL QBD	0 NCH L='L' W='WNA'
+AD='WNA*2.5*L' AS='WNA*2.5*L' PD='2*WNA+5*L' PS='2*WNA+5*L'
+M=1
MNAR BL WL QD	0 NCH  L='L' W='WNA'
+AD='WNA*2.5*L' AS='WNA*2.5*L' PD='2*WNA+5*L' PS='2*WNA+5*L'
+M=1

.IC V(BL) = VDD
.IC V(BLB) = VDD


*changing the co-ordinates in 45 degree angle
EQ	Q	0	VOL='1/sqrt(2)*U + 1/sqrt(2)*V(V1)'
EQB QB	0	VOL='-1/sqrt(2)*U + 1/sqrt(2)*V(V2)'

*inverter characteristics
EV1  V1 0	VOL='U + sqrt(2)*V(QBD)' 
EV2  V2 0	VOL='-U + sqrt(2)*V(QD)'

*take the absolute value for determination of SNM EVD  VD 0	VOL='ABS(V(V1) - V(V2))'
 
.DC U UL UH 0.01  *从UL到UH，以0.01的步长扫描电压

.PRINT DC V(QD) V(QBD) V(V1) V(V2)

.MEASURE DC MAXVD MAX V(VD)
.MEASURE DC SNM param='1/sqrt(2)*MAXVD'

.END
