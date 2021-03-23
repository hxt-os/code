*	HW 6, Problem 1, Part c) Solution
*	ECE 559, Fall 2009, Purdue University
.TEMP 25.0000
.lib 'gd018.l' TT

.GLOBAL VDD!
.PARAM VDD = 2.5
.PARAM L= 300n
.PARAM WN = 750n
.PARAM WP = '3*WN'
.PARAM WNA = 450n
.PARAM VNOISE = 0
.PARAM BITCAP = 1e-12
.OPTION POST

CBL BLB 0 BITCAP 
CBLB BL 0 BITCAP

*	one inverter
MPL Q QBN VDD! VDD! PCH L='L' W='WP'
MNL Q QBN 0 0	NCH L='L' W='WN'

*	one inverter
MPR QB QN VDD! VDD! PCH L='L' W='WP'
MNR QB QN 0 0	NCH L='L' W='WN'

*	access transistors
MNAL BLB WL QB	0	NCH L='L' W='WNA'
MNAR BL WL Q	0	NCH L='L' W='WNA'

VVDD!  VDD! 0	DC=VDD
VWL	WL 0 DC=VDD

VNOISEL QBN QB DC=VNOISE 
VNOISER Q	QN DC=VNOISE

*	logic 1 is stored in the cell initially
.IC V(Q) = 0
.IC V(QB) = VDD

*	writing logic 0 in cell
.IC V(BL) = VDD
.IC V(BLB) = 0

.TRAN 0.1n 10n UIC
.PRINT TRAN V(QB) V(Q) V(BLB) V(BL)

.END
