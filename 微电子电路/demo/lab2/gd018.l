
*  ***************************************************************************************
*  GSMC Logic/Analog 0.18um 1P6M Industry Baseline Generic 1.8V/3.3V process SPICE MODEL *
*  ***************************************************************************************
*  
*    PROCESS :  GSMC 0.18um 1P6M SALICIDE 1.8V/3.3V
*    MODEL   :  BSIM3(V3.2) (Hspice level 49)
*    VERSION :  V1.4
*    DATE    :  Nov 27, 2007
******************************************************************************************


*In the input netlist, use the below .lib statements to call the desired models in gd018.l model file:
*
*	Lib name			    Description
*
*	.lib 'gd018.l' TT		1.8V nominal typical NMOS and typical PMOS models
*	.lib 'gd018.l' SS		1.8V nominal slow NMOS and slow PMOS models
*	.lib 'gd018.l' FF		1.8V nominal fast NMOS and fast PMOS models
*	.lib 'gd018.l' SF		1.8V nominal slow NMOS and fast PMOS models
*	.lib 'gd018.l' FS		1.8V nominal fast NMOS and slow PMOS models
*	.lib 'gd018.l' TT_3V		3.3V nominal typical NMOS and typical PMOS models
*	.lib 'gd018.l' SS_3V		3.3V nominal slow NMOS and slow PMOS models
*	.lib 'gd018.l' FF_3V		3.3V nominal fast NMOS and fast PMOS models
*	.lib 'gd018.l' SF_3V		3.3V nominal slow NMOS and fast PMOS models
*	.lib 'gd018.l' FS_3V		3.3V nominal fast NMOS and slow PMOS models
*	.lib 'gd018.l' TT_N		1.8V native typical NMOS models
*	.lib 'gd018.l' SS_N		1.8V native slow NMOS models
*	.lib 'gd018.l' FF_N		1.8V native fast NMOS models
*	.lib 'gd018.l' SF_N		1.8V native slow NMOS models
*	.lib 'gd018.l' FS_N		1.8V native fast NMOS models
*	.lib 'gd018.l' TT_N3		3.3V native typical NMOS models
*	.lib 'gd018.l' SS_N3		3.3V native slow NMOS models
*	.lib 'gd018.l' FF_N3		3.3V native fast NMOS models
*	.lib 'gd018.l' SF_N3		3.3V native slow NMOS models
*	.lib 'gd018.l' FS_N3		3.3V native fast NMOS models
*	.lib 'gd018.l' TT_M		1.8V MEDIUM Vt typical NMOS and typical PMOS models
*	.lib 'gd018.l' SS_M		1.8V MEDIUM Vt slow NMOS and slow PMOS models
*	.lib 'gd018.l' FF_M		1.8V MEDIUM Vt fast NMOS and fast PMOS models
*	.lib 'gd018.l' SF_M		1.8V MEDIUM Vt slow NMOS and fast PMOS models
*	.lib 'gd018.l' FS_M		1.8V MEDIUM Vt fast NMOS and slow PMOS models
*	.lib 'gd018.l' TT_M3		3.3V MEDIUM Vt typical NMOS models
*	.lib 'gd018.l' SS_M3		3.3V MEDIUM Vt slow NMOS and slow PMOS models
*	.lib 'gd018.l' FF_M3		3.3V MEDIUM Vt fast NMOS and fast PMOS models
*	.lib 'gd018.l' SF_M3		3.3V MEDIUM Vt slow NMOS and fast PMOS models
*	.lib 'gd018.l' FS_M3		3.3V MEDIUM Vt fast NMOS and slow PMOS models
*	.lib 'gd018.l' DIO		1.8V diode models
*	.lib 'gd018.l' DIO3		3.3V diode models
*	.lib 'gd018.l' DIO_DNW		DNW related diode models
*	.lib 'gd018.l' BIP_TT		1.8V Vertical PNP and NPN Bipolar typical models
*	.lib 'gd018.l' BIP_FF		1.8V Vertical PNP and NPN Bipolar fast models
*	.lib 'gd018.l' BIP_SS		1.8V Vertical PNP and NPN Bipolar slow models
*	.lib 'gd018.l' BIP3_TT		3.3V Vertical PNP Bipolar typical models
*	.lib 'gd018.l' BIP3_FF		3.3V Vertical PNP Bipolar fast models
*	.lib 'gd018.l' BIP3_SS		3.3V Vertical PNP Bipolar slow models
*	.lib 'gd018.l' RES_TT		Resistor typical models
*	.lib 'gd018.l' RES_FF		Resistor fast models
*	.lib 'gd018.l' RES_SS		Resistor slow models
*	.lib 'gd018.l' CAP_TT		Typical MIM Capacitor models
*	.lib 'gd018.l' CAP_FF		Fast MIM Capacitor models
*	.lib 'gd018.l' CAP_SS		Slow MIM Capacitor models

*The following models are included in the gd018.l model files:
*
*	Model Name	Description
*
*	nch		1.8V Nominal NMOS Model
*	Pch		1.8V Nominal PMOS Model
*	nch3		3.3V Nominal NMOS Model
*	pch3		3.3V Nominal PMOS Model
*	nnch		1.8V Naivte NMOS Model
*	nnch3		3.3V Native NMOS Model
*	mnch		1.8v MEDIUM Vt NMOS Model
*	mpch		1.8V MEDIUM Vt PMOS Model
*	mnch3		3.3V MEDIUM Vt NMOS Model
*	pnp10		1.8V Vertical PNP Model (Emitter area 10*10)
*	pnp5		1.8V Vertical PNP Model (Emitter area 5*5)
*	pnp2		1.8V Vertical PNP Model (Emitter area 2*2)
*	npn10		1.8V Vertical NPN Model (Emitter area 10*10)
*	npn5		1.8V Vertical NPN Model (Emitter area 5*5)
*	npn2		1.8V Vertical NPN Model (Emitter area 2*2)
*	pnp10_3		3.3V Vertical PNP Model (Emitter area 10*10)
*	pnp5_3		3.3V Vertical PNP Model (Emitter area 5*5)
*	pnp2_3		3.3V Vertical PNP Model (Emitter area 2*2)
*	ndio		1.8V N+/Pwell diode
*	pdio		1.8V P+/Nwell diode
*	nwdio		1.8V NW/Psub diode
*	ndio3		3.3V N+/Pwell diode
*	pdio3		3.3V P+/Nwell diode
*	nwdio3		3.3V NW/Psub diode
*	edio3		3.3V ESD diode
*	dnwpsub		DNW/Psub diode
*	pwdnw		PW/DNW diode
*	rnpolyu		Unsalicided N-Poly Resistor
*	rppolyu		Unsalicided P-Poly Resistor
*	rnpolys		Salicided N-Poly Resistor
*	rppolys		Salicided P-Poly Resistor
*	hrpolyu		Unsalicided HR Poly Resistor 
*	rndiffu		Unsalicided N+ Diffusion Resistor
*	rpdiffu		Unsalicided P+ Diffusion Resistor
*	rndiffs		Salicided N+ Diffusion Resistor
*	rpdiffs		Salicided P+ Diffusion Resistor
*	rnwsti		Nwell Resistor Under STI
*	rnwdiff		Nwell Resistor Under Diffusion
*	rnpolyu3  Three terminal Unsalicided N-Poly Resistor
*	rppolyu3	Three terminal Unsalicided P-Poly Resistor
*	rndiffu3	Three terminal Unsalicided N+ Diffusion Resistor
*	rpdiffu3	Three terminal Unsalicided P+ Diffusion Resistor
*	rnwsti3		Three terminal Nwell Resistor Under STI
*	rnwdiff3	Three terminal Nwell Resistor Under Diffusion
*	rm1		Metal 1 resistor	
*	rm2		Metal 2 resistor
*	rm3		Metal 3 resistor
*	rm4		Metal 4 resistor
*	rm5		Metal 5 resistor
*	rm6		Metal 6 resistor  
*	mim_cap		MIM Capacitor 
*************************************************************************
                        
***************************************************************
*                                                             *
*                    1.8V MOSFET LIB                          *
*                                                             *
***************************************************************
***************** CORNER_LIB OF TYPICAL MODEL ****************************
.LIB TT
.param
+toxn   = 4.08E-09	toxp   = 4.08E-09    
+cjn    = 1.01E-3	cjp    = 1.07E-3 
+cjswn  = 1.94E-10	cjswp  = 2.36E-10
+cjswgn = 3.51E-10	cjswgp= 4.11E-10  
+cgon   = 3.52E-10	cgop   = 3.3E-10  
+dvthn   = 0		dvthp   = 0 
+dwvthn = 0
+dpvthn = 0		
+dxln    = 0		dxw    = 0
+dxlp    = 0   
+hdifn  = 1.77E-7	hdifp  = 1.77E-7           
.lib 'gd018.l' MOS
.ENDL TT
***************** CORNER_LIB OF SNSP MODEL ****************************
.LIB SS
.param
+toxn   = 4.28E-09	toxp   = 4.28E-09    
+cjn    = 1.06E-3	cjp    = 1.12E-3 
+cjswn  = 2.04E-10	cjswp  = 2.46E-10
+cjswgn = 3.68E-10	cjswgp= 4.32E-10  
+cgon   = 3.34E-10	cgop   = 3.14E-10  
+dvthn   = 0.065	dvthp   = -0.06 
+dwvthn = 8e-10		   
+dpvthn = 5e-16		
+dxln    = 2e-8	dxw    = -2.1e-8 
+dxlp    = 1.2e-8  
+hdifn  = 1.77E-7	hdifp  = 1.77E-7
.lib 'gd018.l' MOS
.ENDL SS
***************** CORNER_LIB OF FNFP MODEL ****************************
.LIB FF
.param
+toxn   = 3.88E-09	toxp   = 3.88E-09    
+cjn    = 9.60E-4	cjp    = 1.02E-3 
+cjswn  = 1.84E-10	cjswp  = 2.24E-10
+cjswgn = 3.33E-10	cjswgp= 3.90E-10  
+cgon   = 3.69E-10	cgop   = 3.47E-10  
+dvthn   = -0.065	dvthp   = 0.06 
+dwvthn = -8e-10	   
+dpvthn = -5e-16	
+dxln    = -2e-8	dxw    = 2.1e-8 
+dxlp    = -1.2e-8   
+hdifn  = 1.77E-7	hdifp  = 1.77E-7 
.lib 'gd018.l' MOS
.ENDL FF
***************** CORNER_LIB OF SNFP MODEL ****************************
.LIB SF
.param
+toxn   = 4.08E-09	toxp   = 4.08E-09    
+cjn    = 1.06E-3	cjp    = 1.02E-3 
+cjswn  = 2.04E-10	cjswp  = 2.24E-10
+cjswgn = 3.68E-10	cjswgp= 3.90E-10  
+cgon   = 3.52E-10	cgop   = 3.3E-10  
+dvthn   = 0.065	dvthp   = 0.06 
+dwvthn = 8e-10		   
+dpvthn = 5e-16		
+dxln    = 0		dxw    = 0   
+dxlp = 0	
+hdifn  = 1.77E-7	hdifp  = 1.77E-7              
.lib 'gd018.l' MOS
.ENDL SF
***************** CORNER_LIB OF FNSP MODEL ****************************
.LIB FS
.param
+toxn   = 4.08E-09	toxp   = 4.08E-09    
+cjn    = 9.60E-4	cjp    = 1.12E-3 
+cjswn  = 1.84E-10	cjswp  = 2.46E-10
+cjswgn = 3.33E-10	cjswgp= 4.32E-10  
+cgon   = 3.52E-10	cgop   = 3.3E-10  
+dvthn   = -0.065	dvthp   = -0.06 
+dwvthn = -8e-10	   
+dpvthn = -5e-16	
+dxln    = 0		dxw    = 0 
+dxlp = 0  
+hdifn  = 1.77E-7	hdifp  = 1.77E-7              
.lib 'gd018.l' MOS
.ENDL FS
***********************************************************************
***************************************************************
*                                                             *
*                3.3V NORMAL MOSFET LIB                       *
*                                                             *
***************************************************************
***************** CORNER_LIB OF TYPICAL MODEL ***************
.LIB TT_3V
.param
+toxn3   = 6.8E-09	toxp3   = 6.8E-09    
+cjn3    = 8.86E-4	cjp3    = 1.01E-3 
+cjswn3  = 2.38E-10	cjswp3  = 2.12E-10
+cjswgn3 = 2.86E-10	cjswgp3= 2.23E-10  
+cgon3   = 3.1E-10	cgop3   = 2.8E-10  
+dvthn3   = 0		dvthp3   = 0    
+dxl3   = 0		dxw3    = 0   
+hdifn3  = 1.77E-7	hdifp3  = 1.77E-7 
.lib 'gd018.l' MOS_3V
.ENDL TT_3V
***************** CORNER_LIB OF SNSP MODEL ***************
.LIB SS_3V
.param
+toxn3   = 7.5E-09	toxp3   = 7.5E-09    
+cjn3    = 9.30E-4	cjp3    = 1.06E-3 
+cjswn3  = 2.50E-10	cjswp3  = 2.23E-10
+cjswgn3 = 3.00E-10	cjswgp3= 2.34E-10  
+cgon3   = 2.95E-10	cgop3   = 2.66E-10  
+dvthn3   = 0.1	dvthp3   = -0.1    
+dxl3   = 1.5e-8	dxw3    = -2e-8   
+hdifn3  = 1.77E-7	hdifp3  = 1.77E-7 
.lib 'gd018.l' MOS_3V
.ENDL SS_3V
***************** CORNER_LIB OF FNFP MODEL ***************
.LIB FF_3V
.param
+toxn3   = 6.1E-09	toxp3   = 6.1E-09    
+cjn3    = 8.42E-4	cjp3    = 9.60E-4 
+cjswn3  = 2.26E-10	cjswp3  = 2.01E-10
+cjswgn3 = 2.72E-10	cjswgp3= 2.12E-10  
+cgon3   = 3.25E-10	cgop3   = 2.94E-10  
+dvthn3   = -0.1	dvthp3   = 0.1    
+dxl3   = -1.5e-8	dxw3    = 2e-8   
+hdifn3  = 1.77E-7	hdifp3  = 1.77E-7 
.lib 'gd018.l' MOS_3V
.ENDL FF_3V
***************** CORNER_LIB OF SNFP MODEL ***************
.LIB SF_3V
.param
+toxn3   = 6.8E-09	toxp3   = 6.8E-09    
+cjn3    = 9.30E-4	cjp3    = 9.60E-4 
+cjswn3  = 2.50E-10	cjswp3  = 2.01E-10
+cjswgn3 = 3.00E-10	cjswgp3= 2.12E-10  
+cgon3   = 3.1E-10	cgop3   = 2.8E-10  
+dvthn3   = 0.1	dvthp3   = 0.1    
+dxl3   = 0		dxw3    = 0   
+hdifn3  = 1.77E-7	hdifp3  = 1.77E-7 
.lib 'gd018.l' MOS_3V
.ENDL SF_3V
***************** CORNER_LIB OF FNSP MODEL ***************
.LIB FS_3V
.param
+toxn3   = 6.8E-09	toxp3   = 6.8E-09    
+cjn3    = 8.42E-4	cjp3    = 1.06E-3 
+cjswn3  = 2.26E-10	cjswp3  = 2.23E-10
+cjswgn3 = 2.72E-10	cjswgp3= 2.34E-10  
+cgon3   = 3.1E-10	cgop3   = 2.8E-10  
+dvthn3   = -0.1	dvthp3   = -0.1    
+dxl3   = 0		dxw3    = 0   
+hdifn3  = 1.77E-7	hdifp3  = 1.77E-7 
.lib 'gd018.l' MOS_3V
.ENDL FS_3V
************************************************************
***************************************************************
*                                                             *
*     	       1.8V Native NMOS  LIB    	  	              *  
*                                                             *
***************************************************************
**************** CORNER_LIB OF TYPICAL MODEL ****************************
.LIB TT_N
.param toxna = 4.08e-009  
+cjna  = 1.26e-4      
+cjswna = 1.63e-010     
+cjswgna = 3.33e-010     
+cgona = 5.28e-010 
+dvthna = 0 
+dxlna  = 0 dxwna = 0     
+hdifna = 1.77e-07       
.lib 'gd018.l' MOS_N
.ENDL TT_N
**************** CORNER_LIB OF  SNSP   MODEL ****************************
.LIB SS_N
.param toxna = 4.28e-009  
+cjna  = 1.32e-4      
+cjswna = 1.71e-010     
+cjswgna = 3.50e-010     
+cgona = 5.02e-010  
+dvthna = 0.07 
+dxlna  = 1.4e-8 dxwna = -2.1e-8     
+hdifna = 1.77e-07     
.lib 'gd018.l' MOS_N
.ENDL SS_N
**************** CORNER_LIB OF  FNFP   MODEL ****************************
.LIB FF_N
.param toxna = 3.88e-009  
+cjna  = 1.20e-4      
+cjswna = 1.55e-010     
+cjswgna = 3.16e-010     
+cgona = 5.54e-010  
+dvthna = -0.07 
+dxlna  = -1.4e-8 dxwna = 2.1e-8     
+hdifna = 1.77e-07      
.lib 'gd018.l' MOS_N
.ENDL FF_N
**************** CORNER_LIB OF  SNFP   MODEL ****************************
.LIB SF_N
.param toxna = 4.08e-009  
+cjna  = 1.32e-4      
+cjswna = 1.71e-010     
+cjswgna = 3.50e-010     
+cgona = 5.28e-010  
+dvthna = 0.07  
+dxlna  = 0 dxwna = 0     
+hdifna = 1.77e-07  
.lib 'gd018.l' MOS_N
.ENDL SF_N
**************** CORNER_LIB OF  FNSP   MODEL ****************************
.LIB FS_N
.param toxna = 4.08e-009  
+cjna  = 1.20e-4      
+cjswna = 1.55e-010     
+cjswgna = 3.16e-010     
+cgona = 5.28e-010  
+dvthna = -0.07  
+dxlna  = 0 dxwna = 0     
+hdifna = 1.77e-07          
.lib 'gd018.l' MOS_N
.ENDL FS_N
****************************************************************
***************************************************************
*                                                             *
*     	 	      3.3V Native NMOS  LIB      	              *  
*                                                             *
***************************************************************
**************** CORNER_LIB OF TYPICAL MODEL ****************************
.LIB TT_N3
.param toxna3 = 6.8e-009  
+cjna3  = 1.19e-4      
+cjswna3 = 1.53e-010     
+cjswgna3 = 3.34e-010     
+cgona3 = 4.7e-010 
+dvthna3 = 0 
+dxlna3  = 0 dxwna3 = 0     
+hdifna3 = 1.77e-07       
.lib 'gd018.l' MOS_N3
.ENDL TT_N3
**************** CORNER_LIB OF  SNSP   MODEL ****************************
.LIB SS_N3
.param toxna3 = 7.5e-009  
+cjna3  = 1.25e-4      
+cjswna3 = 1.61e-010     
+cjswgna3 = 3.51e-010     
+cgona3 = 4.46e-010 
+dvthna3 = 0.1 
+dxlna3  = 2e-8 dxwna3 = -2.2e-8     
+hdifna3 = 1.77e-07     
.lib 'gd018.l' MOS_N3
.ENDL SS_N3
**************** CORNER_LIB OF  FNFP   MODEL ****************************
.LIB FF_N3
.param toxna3 = 6.1e-009  
+cjna3  = 1.13e-4      
+cjswna3 = 1.45e-010     
+cjswgna3 = 3.17e-010     
+cgona3 = 4.94e-010 
+dvthna3 = -0.1 
+dxlna3  = -2e-8 dxwna3 = 2.2e-8    
+hdifna3 = 1.77e-07      
.lib 'gd018.l' MOS_N3
.ENDL FF_N3
**************** CORNER_LIB OF  SNFP   MODEL ****************************
.LIB SF_N3
.param 
+toxna3 = 6.8e-009  
+cjna3  = 1.25e-4      
+cjswna3 = 1.61e-010     
+cjswgna3 = 3.51e-010     
+cgona3 = 4.7e-010 
+dvthna3 = 0.1 
+dxlna3  = 0 dxwna3 = 0     
+hdifna3 = 1.77e-07 
.lib 'gd018.l' MOS_N3
.ENDL SF_N3
**************** CORNER_LIB OF  FNSP   MODEL ****************************
.LIB FS_N3
.param 
+toxna3 = 6.8e-009  
+cjna3  = 1.13e-5      
+cjswna3 = 1.45e-010     
+cjswgna3 = 3.17e-010     
+cgona3 = 4.7e-010 
+dvthna3 = -0.1 
+dxlna3  = 0 dxwna3 = 0    
+hdifna3 = 1.77e-07          
.lib 'gd018.l' MOS_N3
.ENDL FS_N3
****************************************************************
***************************************************************
*                                                             *
*            1.8V MEDIUM VT DEVICES LIB                       *  
*                                                             *
***************************************************************
**************** CORNER_LIB OF TYPICAL MODEL ****************************
.LIB TT_M
.param 
+toxnm = 4.08e-009	toxpm   = 4.08e-009
+cjnm = 9.35e-4	cjpm    = 1.10e-3 
+cjswnm = 1.98e-010	cjswpm  = 1.86e-010 
+cjswgnm = 2.48e-010	cjswgpm = 2.15e-010
+cgonm = 3.7e-010	cgopm   = 3.4e-010
+dvthnm = 0		dvthpm   = 0
+dxlm  = 0		dxwm    = 0
+hdifnm = 1.77e-007	hdifpm  = 1.77e-007
.lib 'gd018.l' MOS_M
.ENDL TT_M
**************** CORNER_LIB OF SNSP MODEL ****************************
.LIB SS_M
.param 
+toxnm = 4.28e-009	toxpm   = 4.28e-009
+cjnm = 9.82e-4	cjpm    = 1.16e-3 
+cjswnm = 2.08e-010	cjswpm  = 1.95e-010 
+cjswgnm = 2.60e-010	cjswgpm = 2.26e-010
+cgonm = 3.52e-010	cgopm   = 3.23e-010
+dvthnm = 0.08	dvthpm   = -0.06
+dxlm  = 1.5e-8	dxwm    = -2e-8
+hdifnm = 1.77e-007	hdifpm  = 1.77e-007
.lib 'gd018.l' MOS_M
.ENDL SS_M
**************** CORNER_LIB OF FNFP MODEL ****************************
.LIB FF_M
.param 
+toxnm = 3.88e-009	toxpm   = 3.88e-009
+cjnm = 8.88e-4	cjpm    = 1.05e-3 
+cjswnm = 1.88e-010	cjswpm  = 1.77e-010 
+cjswgnm = 2.36e-010	cjswgpm = 2.04e-010
+cgonm = 3.88e-010	cgopm   = 3.57e-010
+dvthnm = -0.08	dvthpm   = 0.06
+dxlm  = -1.5e-8	dxwm    = 2e-8
+hdifnm = 1.77e-007	hdifpm  = 1.77e-007
.lib 'gd018.l' MOS_M
.ENDL FF_M
**************** CORNER_LIB OF SNFP MODEL ****************************
.LIB SF_M
.param 
+toxnm = 4.08e-009	toxpm   = 4.08e-009
+cjnm = 9.82e-4	cjpm    = 1.05e-3 
+cjswnm = 2.08e-010	cjswpm  = 1.77e-010 
+cjswgnm = 2.60e-010	cjswgpm = 2.04e-010
+cgonm = 3.7e-010	cgopm   = 3.4e-010
+dvthnm = 0.08	dvthpm   = 0.06
+dxlm  = 0		dxwm    = 0
+hdifnm = 1.77e-007	hdifpm  = 1.77e-007
.lib 'gd018.l' MOS_M
.ENDL SF_M
**************** CORNER_LIB OF FNSP MODEL ****************************
.LIB FS_M
.param 
+toxnm = 4.08e-009	toxpm   = 4.08e-009
+cjnm = 8.88e-4	cjpm    = 1.16e-3 
+cjswnm = 1.88e-010	cjswpm  = 1.95e-010 
+cjswgnm = 2.36e-010	cjswgpm = 2.26e-010
+cgonm = 3.7e-010	cgopm   = 3.4e-010
+dvthnm = -0.08	dvthpm   = -0.06
+dxlm  = 0		dxwm    = 0
+hdifnm = 1.77e-007	hdifpm  = 1.77e-007
.lib 'gd018.l' MOS_M
.ENDL FS_M
*************************************************************************
                        
***************************************************************
*                                                             *
*            3.3V MEDIUM VT DEVICES LIB                       *  
*                                                             *
***************************************************************
**************** CORNER_LIB OF TYPICAL MODEL ****************************
.LIB TT_M3
.param toxnm3 = 6.8e-009  
+cjnm3  = 8.96e-4      
+cjswnm3 = 1.71e-010     
+cjswgnm3 = 1.5e-010     
+cgonm3 = 3.01e-010 
+dvthnm3 = 0 
+dxlm3  = 0 dxwm3 = 0     
+hdifnm3 = 1.77e-07       
.lib 'gd018.l' MOS_M3
.ENDL TT_M3
**************** CORNER_LIB OF  SNSP   MODEL ****************************
.LIB SS_M3
.param toxnm3 = 7.5e-009  
+cjnm3  = 9.41e-4      
+cjswnm3 = 1.80e-010     
+cjswgnm3 = 1.58e-010     
+cgonm3 = 2.86e-010 
+dvthnm3 = 0.1 
+dxlm3  = 1.6e-8 dxwm3 = -2.1e-8     
+hdifnm3 = 1.77e-07     
.lib 'gd018.l' MOS_M3
.ENDL SS_M3
**************** CORNER_LIB OF  FNFP   MODEL ****************************
.LIB FF_M3
.param toxnm3 = 6.1e-009  
+cjnm3  = 8.51e-4      
+cjswnm3 = 1.62e-010     
+cjswgnm3 = 1.43e-010     
+cgonm3 = 3.16e-010 
+dvthnm3 = -0.1 
+dxlm3  = -1.6e-8 dxwm3 = 2.1e-8     
+hdifnm3 = 1.77e-07      
.lib 'gd018.l' MOS_M3
.ENDL FF_M3
**************** CORNER_LIB OF  SNFP   MODEL ****************************
.LIB SF_M3
.param toxnm3 = 6.8e-009  
+cjnm3  = 9.41e-4      
+cjswnm3 = 1.80e-010     
+cjswgnm3 = 1.58e-010
+cgonm3 = 3.01e-010   
+dvthnm3 = 0.1 
+dxlm3  = 0 dxwm3 = 0     
+hdifnm3 = 1.77e-07  
.lib 'gd018.l' MOS_M3
.ENDL SF_M3
**************** CORNER_LIB OF  FNSP   MODEL ****************************
.LIB FS_M3
.param toxnm3 = 6.8e-009  
+cjnm3  = 8.51e-4      
+cjswnm3 = 1.62e-010     
+cjswgnm3 = 1.43e-010     
+cgonm3 = 3.01e-010  
+dvthnm3 = -0.1 
+dxlm3  = 0 dxwm3 = 0     
+hdifnm3 = 1.77e-07          
.lib 'gd018.l' MOS_M3
.ENDL FS_M3
****************************************************************
.LIB MOS
***********************************************************************
*                        1.8V nominal NMOS                            *
***********************************************************************
.model  nch.0  nmos  level = 49
+lmin    = 1.8e-007        lmax    = '5e-007-dxln'          wmin    = 2.2e-007        wmax    = '5e-007-dxw'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 1.8e-007        wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxln'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxn     
+toxm    = toxn       wint    = 2e-008          lint    = 1.3e-008        dlc     = 6e-9             
+dwc	 = 3e-9            hdif    = hdifn          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgon              cgdo    = cgon             
+xpart   = 0             
+vth0    = '0.4559183+dvthn'       lvth0   = 1.6337305e-008  wvth0   = '-8.9971071e-009+dwvthn'  pvth0   = '-1.4416293e-015+dpvthn'
+k1      = 0.6047946       lk1     = -8.1802598e-009  wk1     = -1.3295684e-008  pk1     = -2.6429871e-016
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.092341429  
+lvoff   = -6.5929586e-009  wvoff   = -1.4615679e-009  pvoff   = -1.4416293e-016  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.031846741     lu0     = -1.9442263e-010  wu0     = 2.2295379e-009  pu0     = 3.9404535e-016
+ua      = -1.050035e-009  lua     = -6.9397273e-017  wua     = 1.4947433e-017  pua     = 5.1057705e-024
+ub      = 2.2904437e-018  lub     = -6.790283e-027  wub     = -5.0533875e-026  pub     = -6.9678751e-033
+uc      = 1.0450754e-010  luc     = -7.9563836e-018  wuc     = -2.225177e-017  puc     = 1.0698091e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 164.39999       a0      = 0.98072377    
+la0     = -9.1298838e-008  wa0     = -1.4220623e-008  pa0     = 4.7153292e-015  ags     = -0.94408109   
+lags    = 3.5061801e-007  wags    = 3.7141687e-007  pags    = -8.7560961e-014  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 111595.24     
+lvsat   = -0.0048705772   wvsat   = -0.0061441019   pvsat   = 1.687307e-009   keta    = 0.0087285335  
+lketa   = -2.1085135e-008  wketa   = -7.8267717e-009  pketa   = 4.1657081e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 12.432987       lbeta0  = -1.0707754e-007
+wbeta0  = -1.6253196e-007  pbeta0  = 4.0846164e-014  pclm    = 0.50485826      lpclm   = 2.4571249e-007
+wpclm   = 3.1943889e-007  ppclm   = -4.8835193e-014  pdiblc1 = -0.0024795145   lpdiblc1= 1.9779601e-009
+wpdiblc1= 1.3960949e-010  ppdiblc1= -1.051188e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 1e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.0010898081    letab   = -6.0137823e-010
+wetab   = 7.8359296e-011  petab   = -1.9137629e-017  dsub    = 0               elm     = 5             
+alpha1  = 0.77537839      lalpha1 = -4.0149725e-008  walpha1 = -6.0368223e-008  palpha1 = 1.3815614e-014
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.19849022     lkt1    = 1.2797072e-009  wkt1    = -1.8119154e-008  pkt1    = 2.3546612e-015
+kt1l    = 0               kt2     = -0.033534179    lkt2    = 1.9430656e-009  wkt2    = 1.6784928e-009
+pkt2    = -4.4450237e-017  ute     = -1.5581107      lute    = 7.2197539e-008  wute    = 9.0525536e-009
+pute    = -1.6578737e-014  ua1     = 2.4150817e-009  lua1    = -1.3241052e-016  wua1    = -3.8483518e-017
+pua1    = -2.162444e-024  ub1     = -3.6563731e-018  lub1    = 4.1701479e-025  wub1    = 1.8574008e-025
+pub1    = -2.523452e-032  uc1     = -1.9562717e-010  luc1    = 3.0862315e-017  wuc1    = 3.0987675e-017
+puc1    = -5.1284161e-024  prt     = 0               at      = 6563.75         lat     = 0.0030527255  
+wat     = 0.0051672375    pat     = -9.3705906e-010
+noimod  = 2               noia    = 1.73e+020          noib    = 871           noic    = 2.1e-013     
+em      = 42000000        ef      = 0.86                          
+gdsnoi  = 1             
+rsh     = 4.7             js      = 3.23e-7          jsw     = 6.7e-13               cj      = cjn        
+mj      = 0.349            cjsw    = cjswn          mjsw    = 0.162            pb      = 0.6302             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.05e-3               tcjsw   = 4.63e-4               tcjswg  = 4.63e-4               tpb     = 1.64e-3             
+tpbsw   = 5.26e-4               tpbswg  = 5.26e-4             
+cjswg   = cjswgn	   mjswg   = 0.41	     pbswg   = 0.6      tlev=1     tlevc = 1            
.model  nch.1  nmos  level = 49
+lmin    = '5e-007-dxln'          lmax    = '1.2e-006-dxln'        wmin    = 2.2e-007        wmax    = '5e-007-dxw'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 5e-007          wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxln'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxn     
+toxm    = toxn       wint    = 2e-008          lint    = 1.3e-008        dlc     = 6e-9             
+dwc	 = 3e-9               hdif    = hdifn          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgon               cgdo    = cgon            
+xpart   = 0             
+vth0    = '0.46410918+dvthn'      lvth0   = 1.2561309e-008  wvth0   = '-1.4086139e-008+dwvthn'  pvth0   = '9.0441426e-016+dpvthn'
+k1      = 0.59214418      lk1     = -2.3484187e-009  wk1     = -7.5910702e-009  pk1     = -2.8941256e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.12314564   
+lvoff   = 7.6077842e-009  wvoff   = 1.3156329e-009  pvoff   = -1.4244525e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.038844738     lu0     = -3.4204991e-009  wu0     = 6.7950918e-011  pu0     = 1.3905369e-015
+ua      = -1.0605406e-009  lua     = -6.4554206e-017  wua     = -6.3477184e-018  pua     = 1.4922835e-023
+ub      = 2.6259098e-018  lub     = -1.6144013e-025  wub     = -4.2106335e-026  pub     = -1.0852971e-032
+uc      = 1.1370397e-010  luc     = -1.2195939e-017  wuc     = -1.1022581e-018  puc     = -8.6801159e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 164.39999       a0      = 0.17868609    
+la0     = 2.7844053e-007  wa0     = -5.1321848e-008  pa0     = 2.1818994e-014  ags     = 0.68679023    
+lags    = -4.0121368e-007  wags    = 7.7158321e-008  pags    = 4.8092228e-014  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 90404.481     
+lvsat   = 0.0048983644    wvsat   = 6.1504347e-005  pvsat   = -1.1734775e-009  keta    = -0.030594168  
+lketa   = -2.9573691e-009  wketa   = -1.0319457e-009  pketa   = 1.0332933e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 11.979177       lbeta0  = 1.0212891e-007
+wbeta0  = -7.8833204e-008  pbeta0  = 2.2610357e-015  pclm    = 1.1002905       lpclm   = -2.8781782e-008
+wpclm   = -4.7911206e-008  ppclm   = 1.205132e-013   pdiblc1 = 0.0003636006    lpdiblc1= 6.6728405e-010
+wpdiblc1= -3.8816851e-011  ppdiblc1= 7.1742661e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 1e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.00012480957   letab   = -1.5651391e-010
+wetab   = -2.4265723e-011  petab   = 2.8172504e-017  dsub    = 0               elm     = 5             
+alpha1  = 0.54422694      lalpha1 = 6.6411096e-008  walpha1 = -1.9216866e-008  palpha1 = -5.1551613e-015
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.26809908     lkt1    = 3.3369391e-008  wkt1    = 7.3918433e-009  pkt1    = -9.4059083e-015
+kt1l    = 0               kt2     = -0.037539877    lkt2    = 3.7896924e-009  wkt2    = 4.1962406e-009
+pkt2    = -1.205132e-015  ute     = -1.6512335      lute    = 1.1512713e-007  wute    = 2.5177959e-009
+pute    = -1.3566214e-014  ua1     = 5.1702888e-010  lua1    = 7.4259183e-016  wua1    = 4.769449e-019 
+pua1    = -2.0123217e-023  ub1     = -4.2864694e-020  lub1    = -1.2488126e-024  wub1    = -9.6573527e-026
+pub1    = 1.0491205e-031  uc1     = -4.2308238e-011  luc1    = -3.9817712e-017  wuc1    = -2.4842598e-017
+puc1    = 2.060934e-023   prt     = 0               at      = 31662.2         lat     = -0.0085176599 
+wat     = 0.0016239446    pat     = 6.9639898e-010
+noimod  = 2               noia    = 1.73e+020          noib    = 871           noic    = 2.1e-013     
+em      = 42000000        ef      = 0.86             
+gdsnoi  = 1             
+rsh     = 4.7             js      = 3.23e-7          jsw     = 6.7e-13               cj      = cjn        
+mj      = 0.349            cjsw    = cjswn          mjsw    = 0.162            pb      = 0.6302             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.05e-3               tcjsw   = 4.63e-4               tcjswg  = 4.63e-4               tpb     = 1.64e-3             
+tpbsw   = 5.26e-4               tpbswg  = 5.26e-4             
+cjswg   = cjswgn	   mjswg   = 0.41	     pbswg   = 0.6      tlev=1     tlevc = 1               
.model  nch.2  nmos  level = 49
+lmin    = '1.2e-006-dxln'        lmax    = 2.0001e-005     wmin    = 2.2e-007        wmax    = '5e-007-dxw'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 1.2e-006        wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxln'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxn     
+toxm    = toxn       wint    = 2e-008          lint    = 1.3e-008        dlc     = 6e-9             
+dwc	 = 3e-9            hdif    = hdifn          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgon               cgdo    = cgon             
+xpart   = 0             
+vth0    = '0.43611948+dvthn'      lvth0   = 4.5057355e-008  wvth0   = '-1.2637686e-008+dwvthn'  pvth0   = '-7.7723937e-016+dpvthn'
+k1      = 0.58490646      lk1     = 6.054582e-009   wk1     = -3.6235988e-009  pk1     = -7.5003599e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.11128086   
+lvoff   = -6.1672254e-009  wvoff   = -4.8032401e-010  pvoff   = 6.6065346e-016  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.030632663     lu0     = 6.1137198e-009  wu0     = 2.1727711e-009  pu0     = -1.0531593e-015
+ua      = -8.3345906e-010  lua     = -3.2819589e-016  wua     = -6.1135467e-018  pua     = 1.4650962e-023
+ub      = 1.7984809e-018  lub     = 7.9920483e-025  wub     = 1.1524046e-025  pub     = -1.935326e-031
+uc      = 5.194137e-011   luc     = 5.951044e-017   wuc     = 6.8824338e-018  puc     = -1.7950343e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 164.39999       a0      = 0.28015179    
+la0     = 1.6063886e-007  wa0     = 6.9597066e-008  pa0     = -1.1856787e-013  ags     = 0.043726433   
+lags    = 3.453834e-007   wags    = -4.3977889e-009  pags    = 1.4277887e-013  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 78070.686     
+lvsat   = 0.0192179       wvsat   = 0.00012523534   pvsat   = -1.2474692e-009  keta    = 0.00031305887 
+lketa   = -3.884066e-008  wketa   = 2.5002411e-010  pketa   = -4.5507365e-016  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 11.243258       lbeta0  = 9.5653009e-007
+wbeta0  = 1.0181981e-010  pbeta0  = -8.9382527e-014  pclm    = 0.49911223      lpclm   = 6.691862e-007 
+wpclm   = 2.3454817e-008  ppclm   = 3.7657247e-014  pdiblc1 = 0.00017288111   lpdiblc1= 8.8870938e-010
+wpdiblc1= -6.3117358e-012  ppdiblc1= 3.4004222e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 3.9485682e-007
+lpscbe2 = -4.4681877e-013  delta   = 0.01            eta0    = 0.0001          etab    = 2.2248636e-006
+letab   = -1.4193067e-011  wetab   = -5.6234373e-012  petab   = 6.5288107e-018  dsub    = 0             
+elm     = 5               alpha1  = 0.36858211      lalpha1 = 2.7033474e-007  walpha1 = 1.4204703e-010
+palpha1 = -2.7630859e-014  vfb     = -1              lvfb    = 0               wvfb    = 0             
+pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.26203621     lkt1    = 2.6330392e-008  wkt1    = 2.5371513e-009  pkt1    = -3.7696109e-015
+kt1l    = 0               kt2     = -0.031773336    lkt2    = -2.9052607e-009  wkt2    = 2.6996507e-009
+pkt2    = 5.3240897e-016  ute     = -1.590638       lute    = 4.4775746e-008  wute    = 2.2632056e-008
+pute    = -3.691887e-014  ua1     = 1.0744161e-009  lua1    = 9.546527e-017   wua1    = 3.0340991e-017
+pua1    = -5.4795375e-023  ub1     = -1.3026006e-018  lub1    = 2.1374083e-025  wub1    = -6.6795842e-026
+pub1    = 7.0340163e-032  uc1     = -9.5559293e-011  luc1    = 2.2006763e-017  wuc1    = -1.8980782e-017
+puc1    = 1.3803771e-023  prt     = 0               at      = 19429.301       lat     = 0.0056847362  
+wat     = -0.00029338621  pat     = 2.92242e-009  
+noimod  = 2               noia    = 1.73e+020          noib    = 871           noic    = 2.1e-013     
+em      = 42000000        ef      = 0.86             
+rsh     = 4.7             js      = 3.23e-7          jsw     = 6.7e-13               cj      = cjn        
+mj      = 0.349            cjsw    = cjswn          mjsw    = 0.162            pb      = 0.6302             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.05e-3               tcjsw   = 4.63e-4               tcjswg  = 4.63e-4               tpb     = 1.64e-3             
+tpbsw   = 5.26e-4               tpbswg  = 5.26e-4             
+cjswg   = cjswgn	   mjswg   = 0.41	     pbswg   = 0.6      tlev=1     tlevc = 1               
.model  nch.3  nmos  level = 49
+lmin    = '1.2e-006-dxln'        lmax    = 2.0001e-005     wmin    = 5e-007          wmax    = '1.2e-006-dxw'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 1.2e-006        wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxln'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxn     
+toxm    = toxn       wint    = 2e-008          lint    = 1.3e-008        dlc     = 6e-9             
+dwc	 = 3e-9           hdif    = hdifn          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgon               cgdo    = cgon             
+xpart   = 0             
+vth0    = '0.42549968+dvthn'      lvth0   = 4.8812134e-008  wvth0   = '-7.7525756e-009+dwvthn'  pvth0   = '-2.504438e-015+dpvthn'
+k1      = 0.60813837      lk1     = -2.1357186e-008  wk1     = -1.4310277e-008  pk1     = 5.1090534e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.12332525   
+lvoff   = 1.9006694e-008  wvoff   = 5.0600959e-009  pvoff   = -1.0919349e-014  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.038476264     lu0     = -4.1464031e-009  wu0     = -1.4352852e-009  pu0     = 3.6664972e-015
+ua      = -4.288671e-010  lua     = -8.6038896e-016  wua     = -1.9222585e-016  pua     = 2.5945977e-022
+ub      = 1.8608876e-018  lub     = 8.1621398e-025  wub     = 8.6533375e-026  pub     = -2.0135681e-031
+uc      = 1.1090045e-010  luc     = 2.1642174e-017  wuc     = -2.0238744e-017  puc     = -5.3094085e-025
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 164.39999       a0      = 0.19370034    
+la0     = 1.3677535e-007  wa0     = 1.0936473e-007  pa0     = -1.0759065e-013  ags     = 0.038542198   
+lags    = -2.1315883e-007  wags    = -2.0130406e-009  pags    = 3.997083e-013   a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 75317.099     
+lvsat   = 0.046646377     wvsat   = 0.0013918852    pvsat   = -1.3864569e-008  keta    = -0.0078846264 
+lketa   = -2.130537e-009  wketa   = 4.0209593e-009  pketa   = -1.734173e-014  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 11.089267       lbeta0  = 1.5244405e-007
+wbeta0  = 7.0937616e-008  pbeta0  = 2.8049705e-013  pclm    = 0.91841287      lpclm   = 7.332709e-008 
+wpclm   = -1.6942347e-007  ppclm   = 3.1175244e-013  pdiblc1 = 0.00010948115   lpdiblc1= 9.4412054e-010
+wpdiblc1= 2.2852243e-011  ppdiblc1= 8.5150891e-018  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 3.9485682e-007
+lpscbe2 = -4.4681877e-013  delta   = 0.01            eta0    = 0.0001          etab    = -4.9638179e-005
+letab   = -2.5262157e-011  wetab   = 1.8233562e-011  petab   = 1.1620592e-017  dsub    = 0             
+elm     = 5               alpha1  = 0.34012136      lalpha1 = 1.6370839e-009  walpha1 = 1.323399e-008 
+palpha1 = 9.5970063e-014  vfb     = -1              lvfb    = 0               wvfb    = 0             
+pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.24120744     lkt1    = -2.2153199e-008  wkt1    = -7.0440831e-009  pkt1    = 1.8532841e-014
+kt1l    = 0               kt2     = -0.026198888    lkt2    = -1.362985e-010  wkt2    = 1.3540446e-010
+pkt2    = -7.4131364e-016  ute     = -1.6202203      lute    = 5.5983763e-008  wute    = 3.6239929e-008
+pute    = -4.2074558e-014  ua1     = 1.2063373e-009  lua1    = -1.1947709e-016  wua1    = -3.0342783e-017
+pua1    = 4.4078108e-023  ub1     = -1.4350113e-018  lub1    = 4.5376511e-025  wub1    = -5.8869247e-027
+pub1    = -4.0071007e-032  uc1     = -1.1819053e-010  luc1    = 3.8098997e-017  wuc1    = -8.5704121e-018
+puc1    = 6.4013434e-024  prt     = 0               at      = 20794.154       lat     = -0.0079105695 
+wat     = -0.00092121882  pat     = 9.1762607e-009
+noimod  = 2               noia    = 1.73e+020          noib    = 871           noic    = 2.1e-013     
+em      = 42000000        ef      = 0.86            
+rsh     = 4.7             js      = 3.23e-7          jsw     = 6.7e-13               cj      = cjn        
+mj      = 0.349            cjsw    = cjswn          mjsw    = 0.162            pb      = 0.6302             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.05e-3               tcjsw   = 4.63e-4               tcjswg  = 4.63e-4               tpb     = 1.64e-3             
+tpbsw   = 5.26e-4               tpbswg  = 5.26e-4             
+cjswg   = cjswgn	   mjswg   = 0.41	     pbswg   = 0.6      tlev=1     tlevc = 1               
.model  nch.4  nmos  level = 49
+lmin    = '5e-007-dxln'          lmax    = '1.2e-006-dxln'        wmin    = '5e-007-dxw'          wmax    = '1.2e-006-dxw'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 5e-007          wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxln'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxn     
+toxm    = toxn       wint    = 2e-008          lint    = 1.3e-008        dlc     = 6e-9             
+dwc	 = 3e-9            hdif    = hdifn          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgon            cgdo    = cgon             
+xpart   = 0             
+vth0    = '0.45284731+dvthn'      lvth0   = 1.7061535e-008  wvth0   = '-8.9056751e-009+dwvthn'  pvth0   = '-1.1656895e-015+dpvthn'
+k1      = 0.58812653      lk1     = 1.8765504e-009  wk1     = -5.7429517e-009  pk1     = -4.8376114e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.1065836    
+lvoff   = -4.3036138e-010  wvoff   = -6.302905e-009  pvoff   = 2.2730945e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.034701641     lu0     = 2.3593416e-010  wu0     = 1.9737755e-009  pu0     = -2.9142237e-016
+ua      = -1.2514176e-009  lua     = 9.459212e-017   wua     = 8.1455673e-017  pua     = -5.8284475e-023
+ub      = 2.7582117e-018  lub     = -2.2557927e-025  wub     = -1.029652e-025  pub     = 1.8651032e-032
+uc      = 1.5121351e-010  luc     = -2.5161285e-017  wuc     = -1.8356646e-017  puc     = -2.7160565e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 164.39999       a0      = 0.17466496    
+la0     = 1.5887544e-007  wa0     = -4.9472125e-008  pa0     = 7.6818938e-014  ags     = -0.4002818    
+lags    = 2.9631582e-007  wags    = 5.7721145e-007  pags    = -2.7277134e-013  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 140309.26     
+lvsat   = -0.028809526    wvsat   = -0.022894696    pvsat   = 1.4332152e-008  keta    = 0.011824791   
+lketa   = -2.5013171e-008  wketa   = -2.0544667e-008  pketa   = 1.1178962e-014  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 11.433949       lbeta0  = -2.4773086e-007
+wbeta0  = 1.7197166e-007  pbeta0  = 1.6319653e-013  pclm    = 0.72177441      lpclm   = 3.0162434e-007
+wpclm   = 1.262062e-007   ppclm   = -3.1473616e-014  pdiblc1 = 0.00039628476   lpdiblc1= 6.1114155e-010
+wpdiblc1= -5.3851565e-011  ppdiblc1= 9.7568211e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 1e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = -1.2966804e-005  letab   = -6.7837623e-011
+wetab   = 3.911141e-011   petab   = -1.2618589e-017  dsub    = 0               elm     = 5             
+alpha1  = 0.39918842      lalpha1 = -6.6939763e-008  walpha1 = 4.7500854e-008  palpha1 = 5.6186234e-014
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.28396892     lkt1    = 2.7492883e-008  wkt1    = 1.4691968e-008  pkt1    = -6.7027146e-015
+kt1l    = 0               kt2     = -0.028829959    lkt2    = 2.9183744e-009  wkt2    = 1.8967847e-010
+pkt2    = -8.0432575e-016  ute     = -1.7832697      lute    = 2.4528414e-007  wute    = 6.3254469e-008
+pute    = -7.3438438e-014  ua1     = 1.0471678e-009  lua1    = 6.5318808e-017  wua1    = -2.4338694e-016
+pua1    = 2.9142237e-022  ub1     = -1.3960179e-018  lub1    = 4.0849377e-025  wub1    = 5.2587696e-025
+pub1    = -6.5744887e-031  uc1     = -1.2836791e-010  luc1    = 4.9914929e-017  wuc1    = 1.4744849e-017
+puc1    = -2.0667675e-023  prt     = 0               at      = 10016.348       lat     = 0.0046024637  
+wat     = 0.011581037     pat     = -5.3388579e-009
+noimod  = 2               noia    = 1.73e+020          noib    = 871           noic    = 2.1e-013     
+em      = 42000000        ef      = 0.86             
+rsh     = 4.7             js      = 3.23e-7          jsw     = 6.7e-13               cj      = cjn        
+mj      = 0.349             cjsw    = cjswn          mjsw    = 0.162            pb      = 1             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.05e-3               tcjsw   = 4.63e-4               tcjswg  = 4.63e-4               tpb     = 1.64e-3             
+tpbsw   = 5.26e-4               tpbswg  = 5.26e-4             
+cjswg   = cjswgn	   mjswg   = 0.41	     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  nch.5  nmos  level = 49
+lmin    = 1.8e-007        lmax    = '5e-007-dxln'          wmin    = '5e-007-dxw'          wmax    = '1.2e-006-dxw'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 1.8e-007        wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxln'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxn     
+toxm    = toxn       wint    = 2e-008          lint    = 1.3e-008        dlc     = 6e-9             
+dwc	 = 3e-9            hdif    = hdifn          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgon            cgdo    = cgon             
+xpart   = 0             
+vth0    = '0.47508991+dvthn'      lvth0   = 6.807694e-009   wvth0   = '-1.7816046e-008+dwvthn'  pvth0   = '2.9419917e-015+dpvthn'
+k1      = 0.6002354       lk1     = -3.7056374e-009  wk1     = -1.1198454e-008  pk1     = -2.322625e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.10436479   
+lvoff   = -1.4532366e-009  wvoff   = 4.0691764e-009  pvoff   = -2.508435e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.033419204     lu0     = 8.2713772e-010  wu0     = 1.5062051e-009  pu0     = -7.5872417e-017
+ua      = -9.5992902e-010  lua     = -3.9784094e-017  wua     = -2.6501339e-017  pua     = -8.5162917e-024
+ub      = 2.1777393e-018  lub     = 4.2018504e-026  wub     = 1.3101786e-027  pub     = -2.9419917e-032
+uc      = 7.8501618e-011  luc     = 8.3588965e-018  wuc     = -1.0289047e-017  puc     = -6.4352197e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 164.39999       a0      = 0.12651646    
+la0     = 1.8107189e-007  wa0     = 3.7871474e-007  pa0     = -1.2057521e-013  ags     = 0.33987643    
+lags    = -4.4897119e-008  wags    = -2.1920359e-007  pags    = 9.4375997e-014  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 74341.827     
+lvsat   = 0.0016014621    wvsat   = 0.01099247      pvsat   = -1.2898311e-009  keta    = -0.05975632   
+lketa   = 7.9857211e-009  wketa   = 2.3676261e-008  pketa   = -9.2068856e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 10.717174       lbeta0  = 8.2702165e-008
+wbeta0  = 6.2674179e-007  pbeta0  = -4.64525e-014   pclm    = 1.4099601       lpclm   = -1.5629258e-008
+wpclm   = -9.6907954e-008  ppclm   = 7.1382009e-014  pdiblc1 = -0.0025679662   lpdiblc1= 1.9776612e-009
+wpdiblc1= 1.8029725e-010  ppdiblc1= -1.0374392e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 1e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.0016629571    letab   = -8.4043855e-010
+wetab   = -1.8528926e-010  petab   = 9.0830122e-017  dsub    = 0               elm     = 5             
+alpha1  = 0.19976836      lalpha1 = 2.4992884e-008  walpha1 = 2.0441239e-007  palpha1 = -1.6149986e-014
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.23061726     lkt1    = 2.8977678e-009  wkt1    = -3.3407171e-009  pkt1    = 1.6103533e-015
+kt1l    = 0               kt2     = -0.022693178    lkt2    = 8.9318338e-011  wkt2    = -3.3083676e-009
+pkt2    = 8.0827351e-016  ute     = -1.1887068      lute    = -2.8809372e-008  wute    = -1.6087325e-007
+pute    = 2.9884442e-014  ua1     = 1.0934429e-009  lua1    = 4.3985945e-017  wua1    = 5.6947031e-016
+pua1    = -8.3304817e-023  ub1     = -3.7044137e-019  lub1    = -6.4297016e-026  wub1    = -1.3257885e-024
+pub1    = 1.9616891e-031  uc1     = -1.7671778e-011  luc1    = -1.1159859e-018  wuc1    = -5.0871804e-017
+puc1    = 9.5816024e-024  prt     = 0               at      = 21447.768       lat     = -0.00066742098
+wat     = -0.0016794107   pat     = 7.7420834e-010
+noimod  = 2               noia    = 1.73e+020          noib    = 871           noic    = 2.1e-013     
+em      = 42000000        ef      = 0.86             
+rsh     = 4.7             js      = 3.23e-7          jsw     = 6.7e-13               cj      = cjn        
+mj      = 0.349            cjsw    = cjswn          mjsw    = 0.162            pb      = 0.6302             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.05e-3               tcjsw   = 4.63e-4               tcjswg  = 4.63e-4               tpb     = 1.64e-3             
+tpbsw   = 5.26e-4               tpbswg  = 5.26e-4             
+cjswg   = cjswgn	   mjswg   = 0.41	     pbswg   = 0.6      tlev=1     tlevc = 1             
.model  nch.6  nmos  level = 49
+lmin    = 1.8e-007        lmax    = '5e-007-dxln'          wmin    = '1.2e-006-dxw'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 1.8e-007        wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxln'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxn     
+toxm    = toxn       wint    = 2e-008          lint    = 1.3e-008        dlc     = 6e-9             
+dwc	 = 3e-9           hdif    = hdifn          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgon            cgdo    = cgon             
+xpart   = 0             
+vth0    = '0.45725611+dvthn'      lvth0   = 7.4586801e-009  wvth0   = '2.8711681e-009+dwvthn'  pvth0   = '2.1868478e-015+dpvthn'
+k1      = 0.59343268      lk1     = -1.1248589e-008  wk1     = -3.3073001e-009  pk1     = 6.4271992e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.10683252   
+lvoff   = -3.7306327e-009  wvoff   = 6.9317497e-009  pvoff   = 1.3334438e-016  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.038249955     lu0     = 1.016924e-009   wu0     = -4.0974662e-009  pu0     = -2.9602453e-016
+ua      = -1.2120036e-009  lua     = 1.1541371e-018  wua     = 2.6590512e-016  pua     = -5.600464e-023
+ub      = 2.877098e-018   lub     = -8.8628494e-027  wub     = -8.0994593e-025  pub     = 2.9602453e-032
+uc      = 1.1474121e-010  luc     = 4.2275025e-018  wuc     = -5.2326976e-017  puc     = -1.6428028e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 164.39999       a0      = 0.81473014    
+la0     = -1.6167337e-008  wa0     = -4.1961313e-007  pa0     = 1.082223e-013   ags     = 0.15032104    
+lags    = 4.4715056e-008  wags    = 6.8066131e-010  pags    = -9.5741266e-015  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 91749.663     
+lvsat   = -0.0016485694   wvsat   = -0.0092006207   pvsat   = 2.4802055e-009  keta    = -0.028263199  
+lketa   = -6.0621004e-009  wketa   = -1.285576e-008  pketa   = 7.0885873e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 11.722469       lbeta0  = 2.6563619e-008
+wbeta0  = -5.3940049e-007  pbeta0  = 1.8668213e-014  pclm    = 0.94537094      lpclm   = 8.5910271e-008
+wpclm   = 4.4201546e-007  ppclm   = -4.6403845e-014  pdiblc1 = -0.0024052726   lpdiblc1= 1.8735375e-009
+wpdiblc1= -8.4272352e-012  ppdiblc1= 1.1040915e-016  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 1e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.0015590256    letab   = -7.583548e-010
+wetab   = -6.4728675e-011  petab   = -4.3870301e-018  dsub    = 0               elm     = 5             
+alpha1  = 0.50273012      lalpha1 = 1.0035914e-008  walpha1 = -1.4702325e-007  palpha1 = 1.2000994e-015
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.22901731     lkt1    = 6.447102e-009   wkt1    = -5.1966583e-009  pkt1    = -2.5068744e-015
+kt1l    = 0               kt2     = -0.022521743    lkt2    = 7.332279e-010   wkt2    = -3.5072315e-009
+pkt2    = 6.1338415e-017  ute     = -1.7421595      lute    = 4.9371214e-008  wute    = 4.8113195e-007
+pute    = -6.0805038e-014  ua1     = 2.2726172e-009  lua1    = -1.3588348e-016  wua1    = -7.9837181e-016
+pua1    = 1.2534372e-022  ub1     = -3.8317293e-018  lub1    = 4.7128126e-025  wub1    = 2.6893055e-024
+pub1    = -4.2510189e-031  uc1     = -1.3237966e-010  luc1    = 2.8823973e-017  wuc1    = 8.218934e-017 
+puc1    = -2.514875e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 1.73e+020          noib    = 871           noic    = 2.1e-013     
+em      = 42000000        ef      = 0.86             
+rsh     = 4.7             js      = 3.23e-7          jsw     = 6.7e-13               cj      = cjn        
+mj      = 0.349            cjsw    = cjswn          mjsw    = 0.162            pb      = 0.6302             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.05e-3               tcjsw   = 4.63e-4               tcjswg  = 4.63e-4               tpb     = 1.64e-3             
+tpbsw   = 5.26e-4               tpbswg  = 5.26e-4             
+cjswg   = cjswgn	   mjswg   = 0.41	     pbswg   = 0.6      tlev=1     tlevc = 1               
.model  nch.7  nmos  level = 49
+lmin    = '5e-007-dxln'          lmax    = '1.2e-006-dxln'        wmin    = '1.2e-006-dxw'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 5e-007          wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxln'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxn     
+toxm    = toxn       wint    = 2e-008          lint    = 1.3e-008        dlc     = 6e-9             
+dwc	 = 3e-9            hdif    = hdifn          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgon            cgdo    = cgon             
+xpart   = 0             
+vth0    = '0.46263363+dvthn'      lvth0   = 4.9796406e-009  wvth0   = '-2.0257812e-008+dwvthn'  pvth0   = '1.2849308e-014+dpvthn'
+k1      = 0.57607291      lk1     = -3.2457331e-009  wk1     = 8.2392548e-009  pk1     = 1.1042374e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.11899302   
+lvoff   = 1.8753588e-009  wvoff   = 8.0920214e-009  pvoff   = -4.0154087e-016  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.046627483     lu0     = -2.8451167e-009  wu0     = -1.1860202e-008  pu0     = 3.2825966e-015
+ua      = -7.5755436e-010  lua     = -2.0834694e-016  wua     = -4.9142562e-016  pua     = 2.9312483e-022
+ub      = 2.8298806e-018  lub     = 1.2904387e-026  wub     = -1.8610111e-025  pub     = -2.5799001e-031
+uc      = 1.4157732e-010  luc     = -8.1439436e-018  wuc     = -7.1786681e-018  puc     = -2.2456173e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 164.39999       a0      = -0.22391519   
+la0     = 4.6264816e-007  wa0     = 4.1288084e-007  pa0     = -2.7555742e-013  ags     = 1.4872407     
+lags    = -5.7160491e-007  wags    = -1.6123146e-006  pags    = 7.340167e-013   a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 68845.278     
+lvsat   = 0.0089103523    wvsat   = 0.060003528     pvsat   = -2.9422907e-008  keta    = -0.036648995  
+lketa   = -2.1962481e-009  wketa   = 3.5684925e-008  pketa   = -1.5288668e-014  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 11.787027       lbeta0  = -3.1974242e-009
+wbeta0  = -2.3759903e-007  pbeta0  = -1.2046226e-013  pclm    = 1.0056005       lpclm   = 5.8144463e-008
+wpclm   = -2.0303201e-007  ppclm   = 2.5096304e-013  pdiblc1 = 0.00046527994   lpdiblc1= 5.5021275e-010
+wpdiblc1= -1.3388597e-010  ppdiblc1= 1.6824562e-016  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 1e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = -3.8953319e-005  letab   = -2.1686529e-011
+wetab   = 6.9255767e-011  petab   = -6.6153858e-017  dsub    = 0               elm     = 5             
+alpha1  = 0.48541953      lalpha1 = 1.8016095e-008  walpha1 = -5.2527242e-008  palpha1 = -4.2362561e-014
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.25988306     lkt1    = 2.0676213e-008  wkt1    = -1.3247628e-008  pkt1    = 1.2046226e-015
+kt1l    = 0               kt2     = -0.029512073    lkt2    = 3.9557698e-009  wkt2    = 9.8093065e-010
+pkt2    = -2.0077043e-015  ute     = -1.6618722      lute    = 1.2358739e-008  wute    = -7.7566669e-008
+pute    = 1.9675502e-013  ua1     = 3.2426413e-010  lua1    = 7.6230728e-016  wua1    = 5.9518127e-016
+pua1    = -5.1708425e-022  ub1     = 5.561911e-019   lub1    = -1.5515501e-024  wub1    = -1.7386855e-024
+pub1    = 1.616202e-030   uc1     = -3.642325e-011  luc1    = -1.5411932e-017  wuc1    = -9.1910951e-017
+puc1    = 5.5111484e-023  prt     = 0               at      = 31037.944       lat     = -0.005088492  
+wat     = -0.012804015    pat     = 5.9026507e-009
+noimod  = 2               noia    = 1.73e+020          noib    = 871           noic    = 2.1e-013     
+em      = 42000000        ef      = 0.86             
+rsh     = 4.7             js      = 3.23e-7          jsw     = 6.7e-13               cj      = cjn        
+mj      = 0.349            cjsw    = cjswn          mjsw    = 0.162            pb      = 0.6302             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.05e-3               tcjsw   = 4.63e-4               tcjswg  = 4.63e-4               tpb     = 1.64e-3             
+tpbsw   = 5.26e-4               tpbswg  = 5.26e-4             
+cjswg   = cjswgn	   mjswg   = 0.41	     pbswg   = 0.6      tlev=1     tlevc = 1               
.model  nch.8  nmos  level = 49
+lmin    = '1.2e-006-dxln'        lmax    = 2.0001e-005     wmin    = '1.2e-006-dxw'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 1.2e-006        wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxln'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxn     
+toxm    = toxn       wint    = 2e-008          lint    = 1.3e-008        dlc     = 6e-9             
+dwc	 = 3e-9           hdif    = hdifn          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgon            cgdo    = cgon             
+xpart   = 0             
+vth0    = '0.40431918+dvthn'      lvth0   = 7.2682718e-008  wvth0   = '1.6816799e-008+dwvthn'  pvth0   = '-3.0194316e-014+dpvthn'
+k1      = 0.58480445      lk1     = -1.3383058e-008  wk1     = 1.275706e-008   pk1     = -4.1409347e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.10514257   
+lvoff   = -1.4205014e-008  wvoff   = -1.6031814e-008  pvoff   = 2.7606232e-014  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.035212318     lu0     = 1.040789e-008   wu0     = 2.350892e-009   pu0     = -1.3216483e-014
+ua      = -1.0695146e-009  lua     = 1.5383886e-016  wua     = 5.5092523e-016  pua     = -9.170445e-022
+ub      = 2.5065559e-018  lub     = 3.8828431e-025  wub     = -6.6244186e-025  pub     = 2.950416e-031 
+uc      = 1.0481134e-010  luc     = 3.4541361e-017  wuc     = -1.3175374e-017  puc     = -1.5493997e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 164.39999       a0      = 0.57390962    
+la0     = -4.6362644e-007  wa0     = -3.3167803e-007  pa0     = 5.8887543e-013  ags     = 0.21999976    
+lags    = 8.9966182e-007  wags    = -2.1250381e-007  pags    = -8.9116366e-013  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 80459.123     
+lvsat   = -0.0045733215   wvsat   = -0.0045728624   pvsat   = 4.5550282e-008  keta    = 0.0047187012  
+lketa   = -5.0224144e-008  wketa   = -1.0598901e-008  pketa   = 3.8446854e-014  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 11.816224       lbeta0  = -3.7095515e-008
+wbeta0  = -7.723322e-007  pbeta0  = 5.0036295e-013  pclm    = 0.47368004      lpclm   = 6.7570407e-007
+wpclm   = 3.4646661e-007  ppclm   = -3.8700486e-013  pdiblc1 = 0.00020025786   lpdiblc1= 8.5790338e-010
+wpdiblc1= -8.2448736e-011  ppdiblc1= 1.08527e-016    pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 3.9485682e-007
+lpscbe2 = -4.4681877e-013  delta   = 0.01            eta0    = 0.0001          etab    = 8.1616322e-008
+letab   = -6.7006089e-011  wetab   = -3.94414e-011   petab   = 6.0043554e-017  dsub    = 0             
+elm     = 5               alpha1  = 0.51423181      lalpha1 = -1.543496e-008  walpha1 = -1.8873413e-007
+palpha1 = 1.1577363e-013  vfb     = -1              lvfb    = 0               wvfb    = 0             
+pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.24700314     lkt1    = 5.7226254e-009  wkt1    = -3.2106595e-010  pkt1    = -1.3803116e-014
+kt1l    = 0               kt2     = -0.027781512    lkt2    = 1.9465887e-009  wkt2    = 1.971248e-009 
+pkt2    = -3.1574627e-015  ute     = -1.6182418      lute    = -3.8296191e-008  wute    = 3.3944817e-008
+pute    = 6.7290189e-014  ua1     = 1.0729468e-009  lua1    = -1.0691334e-016  wua1    = 1.2439021e-016
+pua1    = 2.950416e-023   ub1     = -9.9395503e-019  lub1    = 2.4816959e-025  wub1    = -5.1751221e-025
+pub1    = 1.9841979e-031  uc1     = -3.5188389e-011  luc1    = -1.6845605e-017  wuc1    = -1.048529e-016
+puc1    = 7.0137082e-023  prt     = 0               at      = 19121.982       lat     = 0.0087459397  
+wat     = 0.0010185012    pat     = -1.014529e-008
+noimod  = 2               noia    = 1.73e+020          noib    = 871           noic    = 2.1e-013     
+em      = 42000000        ef      = 0.86             
+rsh     = 4.7             js      = 3.23e-7          jsw     = 6.7e-13               cj      = cjn        
+mj      = 0.349            cjsw    = cjswn          mjsw    = 0.162            pb      = 0.6302             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.05e-3               tcjsw   = 4.63e-4               tcjswg  = 4.63e-4               tpb     = 1.64e-3             
+tpbsw   = 5.26e-4               tpbswg  = 5.26e-4             
+cjswg   = cjswgn	   mjswg   = 0.41	     pbswg   = 0.6      tlev=1     tlevc = 1              
***********************************************************************
*                        1.8V nominal PMOS                            *
***********************************************************************

.model  pch.0  pmos  level = 49
+lmin    = 1.8e-007        lmax    = '5e-007-dxlp'          wmin    = 2.2e-007        wmax    = '5e-007-dxw'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 1             
+hspver  = 2000.2          lref    = 1.8e-007        wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxlp'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048             lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp     
+toxm    = toxp       wint    = 2e-008          lint    = 2e-008          dlc     = 6e-9             
+ dwc	 = 5e-9              hdif    = hdifp          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop               cgdo    = cgop             
+xpart   = 0             
+vth0    = '-0.43901833+dvthp'     lvth0   = -9.0691012e-009  wvth0   = 5.0638299e-009  pvth0   = -2.6754926e-016
+k1      = 0.64790877      lk1     = 7.1480788e-009  wk1     = -6.358504e-009  pk1     = -1.0439667e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.11532797   
+lvoff   = -4.993898e-009  wvoff   = 1.0938656e-009  pvoff   = 9.9150607e-016  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0003015625  
+lcit    = 8.8701562e-011  u0      = 0.0086298801    lu0     = -3.9445585e-010  wu0     = -1.9345536e-010
+pu0     = 9.0704444e-017  ua      = 4.8337875e-010  lua     = -2.2325423e-016  wua     = -1.1644914e-016
+pua     = 3.2410182e-023  ub      = 8.7409772e-019  lub     = 2.1575515e-025  wub     = -8.7001915e-026
+pub     = -4.3804633e-032  uc      = -1.459983e-010  luc     = 2.7362024e-017  wuc     = -1.7983319e-017
+puc     = -5.3913798e-024  ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0             
+prwg    = 0               prwb    = 0               wr      = 1               rdsw    = 500           
+a0      = 1.4828268       la0     = -2.524193e-008  wa0     = -3.5762946e-008  pa0     = 3.4624021e-014
+ags     = -0.42959321     lags    = 3.6824834e-007  wags    = 4.4685016e-008  pags    = -1.0932797e-014
+a1      = 0               a2      = 0.4             b0      = 0               b1      = 0             
+vsat    = 70494.844       lvsat   = 0.0042488048    wvsat   = -0.0017252156   pvsat   = 7.7117138e-010
+keta    = 0.026922526     lketa   = -5.8724743e-009  wketa   = 1.9173541e-009  pketa   = 3.4624021e-018
+dwg     = 0               dwb     = 0               alpha0  = 0               beta0   = 23.053835     
+lbeta0  = 3.1172263e-008  wbeta0  = 1.4828223e-007  pbeta0  = -9.4429149e-015  pclm    = 1.2005808     
+lpclm   = -5.1446906e-009  wpclm   = 4.307633e-008   ppclm   = -2.2033468e-015  pdiblc1 = 0.00037601138 
+lpdiblc1= 1.208204e-009   wpdiblc1= -3.9986116e-012  ppdiblc1= -3.5620773e-017  pdiblc2 = 1e-005        
+pdiblcb = 0               drout   = 0               pvag    = 0               pscbe1  = 2e+008        
+pscbe2  = 4.79375e-008    lpscbe2 = -3.5480625e-015  delta   = 0.01            eta0    = 0.0002
+etab    = 0.0010140792  
+letab   = -4.5776342e-010  wetab   = -3.4386951e-011  petab   = 1.5370967e-017  dsub    = 0             
+elm     = 5               alpha1  = 8.1069397       lalpha1 = 6.9567368e-008  walpha1 = 7.2452772e-007
+palpha1 = -3.2000989e-014  vfb     = -1              lvfb    = 0               wvfb    = 0             
+pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.84               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.23319156     lkt1    = -3.413743e-009  wkt1    = -6.4299375e-010  pkt1    = -2.4131894e-016
+kt1l    = 0               kt2     = -0.031567884    lkt2    = 2.1638113e-009  wkt2    = 2.4318804e-009
+pkt2    = -6.0854341e-016  ute     = -0.63739011     lute    = 2.0592701e-008  wute    = -4.5129974e-008
+pute    = 4.1391444e-015  ua1     = 1.3809062e-009  lua1    = -2.5596737e-017  wua1    = 7.6551188e-017
+pua1    = 4.5116149e-024  ub1     = -1.729496e-018  lub1    = 4.2399347e-026  wub1    = -1.501286e-025
+pub1    = 1.5423428e-032  uc1     = 6.2901977e-011  luc1    = -1.7063608e-017  wuc1    = -9.006229e-018
+puc1    = 1.248196e-024   prt     = 0               at      = 10000         
+noimod  = 2               noia    = 7.29e+018          noib    = 8.32e4           noic    = 1.7e-012     
+em      = 42000000        ef      = 1.05          
+rsh     = 5.8             js      = 2.74e-7          jsw     = 5.6e-13               cj      = cjp        
+mj      = 0.418             cjsw    = cjswp    pbsw = 0.738         mjsw    = 0.268            pb      = 0.7881             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+ptc     = 0               tt      = 0               ijth    = 0.1             tcj     = 1e-3             
+tcjsw   = 5e-4               tcjswg  = 5e-4               tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3             
+cjswg   = cjswgp	   mjswg   = 0.268	     pbswg   = 0.6      tlev=1     tlevc = 1               
.model  pch.1  pmos  level = 49
+lmin    = '5e-007-dxlp'          lmax    = '1.2e-006-dxlp'        wmin    = 2.2e-007        wmax    = '5e-007-dxw'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 1             
+hspver  = 2000.2          lref    = 5e-007          wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxlp'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp     
+toxm    = toxp       wint    = 2e-008          lint    = 2e-008          dlc     = 6e-9             
+dwc	 = 5e-9            hdif    = hdifp          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop            cgdo    = cgop             
+xpart   = 0             
+vth0    = '-0.41658724+dvthp'     lvth0   = -1.9095794e-008  wvth0   = 1.8487212e-009  pvth0   = 1.1696043e-015
+k1      = 0.70667842      lk1     = -1.9121953e-008  wk1     = -1.7367427e-008  pk1     = 3.8770218e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.081790408  
+lvoff   = -1.9985188e-008  wvoff   = -5.7975208e-009  pvoff   = 4.0719558e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0005        
+u0      = 0.0075723355    lu0     = 7.8266598e-011  wu0     = 1.9552967e-010  pu0     = -8.3171863e-017
+ua      = -1.203352e-011  lua     = -1.8049449e-018  wua     = 8.9889877e-018  pua     = -2.3660662e-023
+ub      = 1.0783313e-018  lub     = 1.2446273e-025  wub     = -1.211353e-025  pub     = -2.8547009e-032
+uc      = -1.1722943e-010  luc     = 1.450234e-017   wuc     = -4.9449343e-018  puc     = -1.1219538e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 500             a0      = 1.061775      
+la0     = 1.6296822e-007  wa0     = -2.9532986e-008  pa0     = 3.1839229e-014  ags     = 0.11891346    
+lags    = 1.2306586e-007  wags    = 1.0293603e-008  pags    = 4.4401646e-015  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 47228.571     
+lvsat   = 0.014648829     keta    = -0.0043539857   lketa   = 8.1081266e-009  wketa   = 9.522828e-009 
+pketa   = -3.3961844e-015  dwg     = 0               dwb     = 0               alpha0  = 0             
+beta0   = 22.010513       lbeta0  = 4.97537e-007    wbeta0  = -1.2965382e-007  pbeta0  = 1.147945e-013 
+pclm    = 0.75730786      lpclm   = 1.9299832e-007  wpclm   = 4.8322671e-008  ppclm   = -4.5484613e-015
+pdiblc1 = 0.00025555296   lpdiblc1= 1.2620489e-009  wpdiblc1= 9.8308102e-012  ppdiblc1= -4.1802525e-017
+pdiblc2 = 1e-005          pdiblcb = 0               drout   = 0               pvag    = 0             
+pscbe1  = 2e+008          pscbe2  = 4e-008          delta   = 0.01            eta0    = 0.0002        
+etab    = -1e-005         dsub    = 0               elm     = 5               alpha1  = 3.6715284     
+lalpha1 = 2.0521962e-006  walpha1 = -5.1094951e-007  palpha1 = 5.2025733e-013  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.84               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.29388317     lkt1    = 2.3715407e-008  wkt1    = 1.689082e-008   pkt1    = -8.0789336e-015
+kt1l    = 0               kt2     = -0.026895682    lkt2    = 7.5336833e-011  wkt2    = 5.3748184e-010
+pkt2    = 2.3825273e-016  ute     = -0.49866021     lute    = -4.1419563e-008  wute    = -7.0806124e-008
+pute    = 1.5616384e-014  ua1     = 1.8482198e-009  lua1    = -2.3448589e-016  wua1    = -1.8179585e-016
+pua1    = 1.1999274e-022  ub1     = -1.9895106e-018  lub1    = 1.5862589e-025  wub1    = 1.3731028e-025
+pub1    = -1.1306175e-031  uc1     = 1.7368362e-011  luc1    = 3.2899176e-018  wuc1    = -4.1118708e-018
+puc1    = -9.3958214e-025  prt     = 0               at      = 10000         
+noimod  = 2               noia    = 7.29e+018          noib    = 8.32e4           noic    = 1.7e-012     
+em      = 42000000        ef      = 1.05             
+rsh     = 5.8             js      = 2.74e-7          jsw     = 5.6e-13               cj      = cjp        
+mj      = 0.418             cjsw    = cjswp    pbsw = 0.738         mjsw    = 0.268            pb      = 0.7881             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+ptc     = 0               tt      = 0               ijth    = 0.1             tcj     = 1e-3             
+tcjsw   = 5e-4               tcjswg  = 5e-4               tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3             
+cjswg   = cjswgp	   mjswg   = 0.268	     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch.2  pmos  level = 49
+lmin    = '1.2e-006-dxlp'        lmax    = 2.0001e-005     wmin    = 2.2e-007        wmax    = '5e-007-dxw'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 1             
+hspver  = 2000.2          lref    = 1.2e-006        wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxlp'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp     
+toxm    = toxp       wint    = 2e-008          lint    = 2e-008          dlc     = 6e-9             
+dwc	 = 5e-9            hdif    = hdifp          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop            cgdo    = cgop             
+xpart   = 0             
+vth0    = '-0.42391848+dvthp'     lvth0   = -1.0686873e-008  wvth0   = 5.3419374e-009  pvth0   = -2.8371147e-015
+k1      = 0.67000011      lk1     = 2.2948068e-008  wk1     = -9.7756355e-009  pk1     = -4.8307628e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.092722899  
+lvoff   = -7.4456202e-009  wvoff   = -3.9855699e-009  pvoff   = 1.9936481e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0005        
+u0      = 0.0072055517    lu0     = 4.9896768e-010  wu0     = 8.1292556e-010  pu0     = -7.9132496e-016
+ua      = -7.5638637e-011  lua     = 7.1150124e-017  wua     = 2.1980351e-017  pua     = -3.8561756e-023
+ub      = 1.2169584e-018  lub     = -3.4542492e-026  wub     = -1.6226865e-025  pub     = 1.8632942e-032
+uc      = -7.2556697e-011  luc     = -3.6737283e-017  wuc     = -1.7968874e-017  puc     = 3.7189206e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 500             a0      = 0.80280411    
+la0     = 4.6000782e-007  wa0     = 7.8146791e-008  pa0     = -9.1669475e-014  ags     = 0.080304353   
+lags    = 1.673505e-007   wags    = -6.311928e-009  pags    = 2.3486709e-014  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 60000         
+keta    = 0.04228985      lketa   = -4.5392353e-008  wketa   = -5.3042574e-009  pketa   = 1.3610483e-014
+dwg     = 0               dwb     = 0               alpha0  = 0               beta0   = 21.292145     
+lbeta0  = 1.321505e-006   wbeta0  = 1.2084465e-007  pbeta0  = -1.7252724e-013  pclm    = 0.57862943    
+lpclm   = 3.9794247e-007  wpclm   = -1.4639386e-008  ppclm   = 6.7669019e-014  pdiblc1 = -4.3755192e-005
+lpdiblc1= 1.6053553e-009  wpdiblc1= 6.3101228e-012  ppdiblc1= -3.7764297e-017  pdiblc2 = 1e-005        
+pdiblcb = 0               drout   = 0               pvag    = 0               pscbe1  = 2e+008        
+pscbe2  = 3.9040568e-007  lpscbe2 = -4.0191532e-013  delta   = 0.01            eta0    = 0.0002        
+etab    = -1e-005         dsub    = 0               elm     = 5               alpha1  = 3.0584169     
+lalpha1 = 2.7554351e-006  walpha1 = 2.6619313e-007  palpha1 = -3.7112527e-013  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.84               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.26181492     lkt1    = -1.3066878e-008  wkt1    = 6.7386867e-009  pkt1    = 3.565563e-015 
+kt1l    = 0               kt2     = -0.023945209    lkt2    = -3.3088558e-009  wkt2    = 4.4771042e-010
+pkt2    = 3.4122055e-016  ute     = -0.73638388     lute    = 2.3124948e-007  wute    = -2.4868399e-008
+pute    = -3.7074188e-014  ua1     = 1.1768742e-009  lua1    = 5.3554753e-016  wua1    = 6.0488021e-018
+pua1    = -9.5465075e-023  ub1     = -1.1962625e-018  lub1    = -7.5122974e-025  wub1    = -8.6273904e-026
+pub1    = 1.4338931e-031  uc1     = -6.6210645e-012  luc1    = 3.080579e-017   wuc1    = -3.1760743e-019
+puc1    = -5.2916022e-024  prt     = 0               at      = 10000         
+noimod  = 2               noia    = 7.29e+018          noib    = 8.32e4           noic    = 1.7e-012     
+em      = 42000000        ef      = 1.05             
+rsh     = 5.8             js      = 2.74e-7          jsw     = 5.6e-13               cj      = cjp        
+mj      = 0.418             cjsw    = cjswp    pbsw = 0.738         mjsw    = 0.268            pb      = 0.7881             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+ptc     = 0               tt      = 0               ijth    = 0.1             tcj     = 1e-3             
+tcjsw   = 5e-4               tcjswg  = 5e-4               tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3             
+cjswg   = cjswgp	   mjswg   = 0.268	     pbswg   = 0.6      tlev=1     tlevc = 1             
.model  pch.3  pmos  level = 49
+lmin    = '1.2e-006-dxlp'        lmax    = 2.0001e-005     wmin    = '5e-007-dxw'          wmax    = '1.2e-006-dxw'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 1             
+hspver  = 2000.2          lref    = 1.2e-006        wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxlp'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp     
+toxm    = toxp       wint    = 2e-008          lint    = 2e-008          dlc     = 6e-9             
+dwc	 = 5e-9           hdif    = hdifp          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop            cgdo    = cgop             
+xpart   = 0             
+vth0    = '-0.40134189+dvthp'     lvth0   = -4.8437278e-008  wvth0   = -5.0432909e-009  pvth0   = 1.4528072e-014
+k1      = 0.64964245      lk1     = 1.6743385e-008  wk1     = -4.1111455e-010  pk1     = -1.9766084e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.10050833   
+lvoff   = -5.2600899e-009  wvoff   = -4.042713e-010  pvoff   = 9.8830421e-016  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.00068731364 
+lcit    = -2.1484874e-010  wcit    = -8.6164273e-011  pcit    = 9.8830421e-017  u0      = 0.0080565307  
+lu0     = -1.5135723e-010  wu0     = 4.2147522e-010  pu0     = -4.921755e-016  ua      = -2.2299432e-012
+lua     = -1.8004695e-016  wua     = -1.1787648e-017  pua     = 7.6988898e-023  ub      = 1.1039917e-018
+lub     = 7.3945751e-025  wub     = -1.1030397e-025  pub     = -3.3740706e-031  uc      = -1.041457e-010
+luc     = 9.1512228e-017  wuc     = -3.4379337e-018  puc     = -5.5275854e-023  ngate   = 5e+020        
+xj      = 1.5000001e-007  w0      = 0               prwg    = 0               prwb    = 0             
+wr      = 1               rdsw    = 500             a0      = 1.0353458       la0     = -1.9604207e-007
+wa0     = -2.8822387e-008  pa0     = 2.1011347e-013  ags     = 0.13334326      lags    = -5.0710971e-008
+wags    = -3.0709825e-008  pags    = 1.2379499e-013  a1      = 0               a2      = 0.4           
+b0      = 0               b1      = 0               vsat    = 60000           keta    = 0.042590784   
+lketa   = -1.6792652e-008  wketa   = -5.4426871e-009  pketa   = 4.5461994e-016  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 21.903523       lbeta0  = 2.8041465e-007
+wbeta0  = -1.6038925e-007  pbeta0  = 3.063743e-013   pclm    = 0.55936814      lpclm   = 5.1733354e-007
+wpclm   = -5.7791912e-009  ppclm   = 1.2749124e-014  pdiblc1 = -3.5142494e-005  lpdiblc1= 1.4701914e-009
+wpdiblc1= 2.3482818e-012  ppdiblc1= 2.4411114e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 3.9040568e-007
+lpscbe2 = -4.0191532e-013  delta   = 0.01            eta0    = 0.0002          etab    = -1e-005       
+dsub    = 0               elm     = 5               alpha1  = 4.3897937       lalpha1 = 8.5720943e-007
+walpha1 = -3.4624022e-007  palpha1 = 5.0205854e-013  vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.84               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.27635256     lkt1    = -1.5928441e-010  wkt1    = 1.3426e-008     pkt1    = -2.3719301e-015
+kt1l    = 0               kt2     = -0.021797406    lkt2    = -1.0631308e-009  wkt2    = -5.4027866e-010
+pkt2    = -6.9181295e-016  ute     = -0.8993483      lute    = 5.6979368e-008  wute    = 5.0095234e-008
+pute    = 4.3090063e-014  ua1     = 1.0783114e-009  lua1    = -1.5969188e-016  wua1    = 5.1387672e-017
+pua1    = 2.2434506e-022  ub1     = -1.557258e-018  lub1    = 2.8022944e-025  wub1    = 7.9784028e-026
+pub1    = -3.3108191e-031  uc1     = -5.5295948e-011  luc1    = 1.1507595e-017  wuc1    = 2.2072839e-017
+puc1    = 3.5855677e-024  prt     = 0               at      = 10000         
+noimod  = 2               noia    = 7.29e+018          noib    = 8.32e4           noic    = 1.7e-012     
+em      = 42000000        ef      = 1.05             
+rsh     = 5.8             js      = 2.74e-7          jsw     = 5.6e-13               cj      = cjp        
+mj      = 0.418             cjsw    = cjswp    pbsw = 0.738         mjsw    = 0.268            pb      = 0.7881             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+ptc     = 0               tt      = 0               ijth    = 0.1             tcj     = 1e-3             
+tcjsw   = 5e-4               tcjswg  = 5e-4               tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3             
+cjswg   = cjswgp	   mjswg   = 0.268	     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch.4  pmos  level = 49
+lmin    = '5e-007-dxlp'          lmax    = '1.2e-006-dxlp'        wmin    = '5e-007-dxw'          wmax    = '1.2e-006-dxw'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 1             
+hspver  = 2000.2          lref    = 5e-007          wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxlp'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp     
+toxm    = toxp       wint    = 2e-008          lint    = 2e-008          dlc     = 6e-9             
+dwc	 = 5e-9           hdif    = hdifp          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop            cgdo    = cgop             
+xpart   = 0             
+vth0    = '-0.44247309+dvthp'     lvth0   = -1.2597993e-009  wvth0   = 1.3756208e-008  pvth0   = -7.0349534e-015
+k1      = 0.65060011      lk1     = 1.5644949e-008  wk1     = 8.4285931e-009  pk1     = -1.2115753e-014
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.11231927   
+lvoff   = 8.2870516e-009  wvoff   = 8.2457535e-009  pvoff   = -8.9332742e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0005        
+u0      = 0.0086404282    lu0     = -8.2108777e-010  wu0     = -2.9579299e-010  pu0     = 3.3053115e-016
+ua      = -1.1926812e-011  lua     = -1.6892464e-016  wua     = 8.9399017e-018  pua     = 5.3214398e-023
+ub      = 1.7410463e-018  lub     = 8.7558141e-027  wub     = -4.2598421e-025  pub     = 2.467817e-032 
+uc      = -2.8502941e-011  luc     = 4.7499873e-018  wuc     = -4.5759118e-017  puc     = -6.7334554e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 500             a0      = 0.67205437    
+la0     = 2.2065321e-007  wa0     = 1.4973851e-007  pa0     = 5.3041316e-015  ags     = -0.097477388  
+lags    = 2.1404031e-007  wags    = 1.0983339e-007  pags    = -3.7408086e-014  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 47228.571     
+lvsat   = 0.014648829     keta    = 0.033974204     lketa   = -6.9094339e-009  wketa   = -8.1081391e-009
+pketa   = 3.5118934e-015  dwg     = 0               dwb     = 0               alpha0  = 0             
+beta0   = 21.951685       lbeta0  = 2.2517342e-007  wbeta0  = -1.0259277e-007  pbeta0  = 2.4008174e-013
+pclm    = 0.82218563      lpclm   = 2.1588188e-007  wpclm   = 1.8478895e-008  ppclm   = -1.50749e-014 
+pdiblc1 = 0.00042132061   lpdiblc1= 9.4662823e-010  wpdiblc1= -6.642231e-011  ppdiblc1= 1.0329098e-016
+pdiblc2 = 1e-005          pdiblcb = 0               drout   = 0               pvag    = 0             
+pscbe1  = 2e+008          pscbe2  = 4e-008          delta   = 0.01            eta0    = 0.0002        
+etab    = 3.2328163e-005  letab   = -4.8550403e-011  wetab   = -1.9470955e-011  petab   = 2.2333186e-017
+dsub    = 0               elm     = 5               alpha1  = 5.2084804       lalpha1 = -8.1824171e-008
+walpha1 = -1.2179474e-006  palpha1 = 1.5019067e-012  vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.84               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.29180255     lkt1    = 1.7561853e-008  wkt1    = 1.5933732e-008  pkt1    = -5.2482986e-015
+kt1l    = 0               kt2     = -0.025929367    lkt2    = 3.6762282e-009  wkt2    = 9.2977078e-011
+pkt2    = -1.4181573e-015  ute     = -0.92411061     lute    = 8.5381744e-008  wute    = 1.2490106e-007
+pute    = -4.2712217e-014  ua1     = 8.8117641e-010  lua1    = 6.6421974e-017  wua1    = 2.6304411e-016
+pua1    = -1.8424878e-023  ub1     = -1.1205504e-018  lub1    = -2.2067414e-025  wub1    = -2.6241141e-025
+pub1    = 6.141626e-032   uc1     = -2.4474406e-011  luc1    = -2.3844714e-017  wuc1    = 1.5135802e-017
+puc1    = 1.1542349e-023  prt     = 0               at      = 10000         
+noimod  = 2               noia    = 7.29e+018          noib    = 8.32e4           noic    = 1.7e-012     
+em      = 42000000        ef      = 1.05             
+rsh     = 5.8             js      = 2.74e-7          jsw     = 5.6e-13               cj      = cjp        
+mj      = 0.418             cjsw    = cjswp    pbsw = 0.738         mjsw    = 0.268            pb      = 0.7881             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+ptc     = 0               tt      = 0               ijth    = 0.1             tcj     = 1e-3             
+tcjsw   = 5e-4               tcjswg  = 5e-4               tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3             
+cjswg   = cjswgp	   mjswg   = 0.268	     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch.5  pmos  level = 49
+lmin    = 1.8e-007        lmax    = '5e-007-dxlp'          wmin    = '5e-007-dxw'          wmax    = '1.2e-006-dxw'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 1             
+hspver  = 2000.2          lref    = 1.8e-007        wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxlp'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp     
+toxm    = toxp       wint    = 2e-008          lint    = 2e-008          dlc     = 6e-9             
+dwc	 = 5e-9           hdif    = hdifp          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop            cgdo    = cgop             
+xpart   = 0             
+vth0    = '-0.42330682+dvthp'     lvth0   = -9.8271194e-009  wvth0   = -2.1634621e-009  pvth0   = 8.1139121e-017
+k1      = 0.67547515      lk1     = 4.5258072e-009  wk1     = -1.9039039e-008  pk1     = 1.6227824e-016
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.080327071  
+lvoff   = -6.0134591e-009  wvoff   = -1.5006547e-008  pvoff   = 1.4605042e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.00043309821 
+lcit    = 2.9905098e-011  wcit    = -6.0506429e-011  pcit    = 2.7046374e-017  u0      = 0.0064004086  
+lu0     = 1.8020103e-010  wu0     = 8.3210156e-010  pu0     = -1.7363772e-016  ua      = -3.8598687e-010
+lua     = -1.7197966e-018  wua     = 2.8345904e-016  pua     = -6.9495657e-023  ub      = 1.7484128e-018
+lub     = 5.4630025e-027  wub     = -4.8918685e-025  pub     = 5.2929753e-032  uc      = -4.8844047e-011
+luc     = 1.3842462e-017  wuc     = -6.2674274e-017  puc     = 8.2761903e-025  ngate   = 5e+020        
+xj      = 1.5000001e-007  w0      = 0               prwg    = 0               prwb    = 0             
+wr      = 1               rdsw    = 500             a0      = 0.74794643      la0     = 1.8672946e-007
+wa0     = 3.0228202e-007  pa0     = -6.2882819e-014  ags     = -0.29346811     lags    = 3.0164816e-007
+wags    = -1.7932533e-008  pags    = 1.9703283e-014  a1      = 0               a2      = 0.4           
+b0      = 0               b1      = 0               vsat    = 69703.929       lvsat   = 0.0046023439  
+wvsat   = -0.0013613946   pvsat   = 6.0854341e-010  keta    = 0.033557966     lketa   = -6.7233757e-009
+wketa   = -1.1349481e-009  pketa   = 3.9487705e-016  dwg     = 0               dwb     = 0             
+alpha0  = 0               beta0   = 22.050163       lbeta0  = 1.8115393e-007  wbeta0  = 6.099715e-007 
+pbeta0  = -7.8434483e-014  pclm    = 1.1853093       lpclm   = 5.3565606e-008  wpclm   = 5.0101229e-008
+ppclm   = -2.9210083e-014  pdiblc1 = 0.00085186214   lpdiblc1= 7.5417617e-010  wpdiblc1= -2.2288996e-010
+ppdiblc1= 1.7323202e-016  pdiblc2 = 1e-005          pdiblcb = 0               drout   = 0             
+pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4.79375e-008    lpscbe2 = -3.5480625e-015
+delta   = 0.01            eta0    = 0.0002
+etab    = 0.0010019443    letab   = -4.8196881e-010  wetab   = -2.8804871e-011
+petab   = 2.6505446e-017  dsub    = 0               elm     = 5               alpha1  = 3.3194104     
+lalpha1 = 7.6259014e-007  walpha1 = 2.9267912e-006  palpha1 = -3.5079147e-013  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.84               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.24903086     lkt1    = -1.5570926e-009  wkt1    = 6.6430818e-009  pkt1    = -1.0953781e-015
+kt1l    = 0               kt2     = -0.012950354    lkt2    = -2.1253908e-009  wkt2    = -6.1321836e-009
+pkt2    = 1.3644895e-015  ute     = -0.69472786     lute    = -1.7152348e-008  wute    = -1.8754611e-008
+pute    = 2.1501867e-014  ua1     = 1.1374379e-009  lua1    = -4.8126933e-017  wua1    = 1.8854661e-016
+pua1    = 1.4875505e-023  ub1     = -1.8130289e-018  lub1    = 8.886376e-026   wub1    = -1.1170344e-025
+pub1    = -5.9502022e-033  uc1     = -8.362366e-011  luc1    = 2.5950022e-018  wuc1    = 5.8395564e-017
+puc1    = -7.7947649e-024  prt     = 0               at      = 10000         
+noimod  = 2               noia    = 7.29e+018          noib    = 8.32e4           noic    = 1.7e-012     
+em      = 42000000        ef      = 1.05             
+rsh     = 5.8             js      = 2.74e-7          jsw     = 5.6e-13               cj      = cjp        
+mj      = 0.418             cjsw    = cjswp    pbsw = 0.738         mjsw    = 0.268            pb      = 0.7881             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+ptc     = 0               tt      = 0               ijth    = 0.1             tcj     = 1e-3             
+tcjsw   = 5e-4               tcjswg  = 5e-4               tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3             
+cjswg   = cjswgp	   mjswg   = 0.268	     pbswg   = 0.6      tlev=1     tlevc = 1             
.model  pch.6  pmos  level = 49
+lmin    = 1.8e-007        lmax    = '5e-007-dxlp'          wmin    = '1.2e-006-dxw'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 1             
+hspver  = 2000.2          lref    = 1.8e-007        wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxlp'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp     
+toxm    = toxp       wint    = 2e-008          lint    = 2e-008          dlc     = 6e-9             
+dwc	 = 5e-9           hdif    = hdifp          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop            cgdo    = cgop             
+xpart   = 0             
+vth0    = '-0.44162922+dvthp'     lvth0   = -5.9421983e-009  wvth0   = 1.9090519e-008  pvth0   = -4.4253693e-015
+k1      = 0.64295995      lk1     = 4.2239684e-009  wk1     = 1.8678594e-008  pk1     = 5.1241119e-016
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.11489032   
+lvoff   = 1.1688447e-009  wvoff   = 2.5086821e-008  pvoff   = -6.8709682e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.00028973771 
+lcit    = 1.4457951e-010  wcit    = 1.0579175e-010  pcit    = -1.0597595e-016  u0      = 0.0084288145  
+lu0     = -1.6344795e-010  wu0     = -1.5208493e-009  pu0     = 2.2499509e-016  ua      = 3.3291216e-011
+lua     = -1.3455608e-016  wua     = -2.0290354e-016  pua     = 8.4594429e-023  ub      = 1.3535135e-018
+lub     = 8.2615829e-026  wub     = -3.1103637e-026  pub     = -3.6567526e-032  uc      = -1.0941833e-010
+luc     = 1.6965383e-017  wuc     = 7.5918968e-018  puc     = -2.7949701e-024  ngate   = 5e+020        
+xj      = 1.5000001e-007  w0      = 0               prwg    = 0               prwb    = 0             
+wr      = 1               rdsw    = 500             a0      = 1.2321144       la0     = 6.4452974e-008
+wa0     = -2.5935288e-007  pa0     = 7.8957906e-014  ags     = -0.076640251    lags    = 2.6038513e-007
+wags    = -2.6945285e-007  pags    = 6.7568402e-014  a1      = 0               a2      = 0.4           
+b0      = 0               b1      = 0               vsat    = 68344.977       lvsat   = 0.0061710483  
+wvsat   = 0.00021498886   pvsat   = -1.2111537e-009  keta    = 0.0073669331    lketa   = 7.9922527e-010
+wketa   = 2.924665e-008   pketa   = -8.3313401e-015  dwg     = 0               dwb     = 0             
+alpha0  = 0               beta0   = 23.15397        lbeta0  = 2.7199125e-008  wbeta0  = -6.7044523e-007
+pbeta0  = 1.001531e-013   pclm    = 1.2395211       lpclm   = -1.3321362e-009  wpclm   = -1.2784452e-008
+ppclm   = 3.4471298e-014  pdiblc1 = 0.00091395736   lpdiblc1= 9.1837243e-010  wpdiblc1= -2.9492041e-010
+ppdiblc1= -1.7235649e-017  pdiblc2 = 1e-005          pdiblcb = 0               drout   = 0             
+pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4.79375e-008    lpscbe2 = -3.5480625e-015
+delta   = 0.01            eta0    = 0.0002
+etab    = 0.0012510231    letab   = -5.6132042e-010  wetab   = -3.1773631e-010
+petab   = 1.1855332e-016  dsub    = 0               elm     = 5               alpha1  = 8.049198      
+lalpha1 = 2.4734834e-007  walpha1 = -2.5597624e-006  palpha1 = 2.4688903e-013  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.84               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.26929521     lkt1    = -1.9232112e-010  wkt1    = 3.0149726e-008  pkt1    = -2.678513e-015
+kt1l    = 0               kt2     = -0.024583955    lkt2    = 5.9294575e-010  wkt2    = 7.3627942e-009
+pkt2    = -1.7887809e-015  ute     = -0.89763112     lute    = 5.2323681e-008  wute    = 2.1661318e-007
+pute    = -5.9090326e-014  ua1     = 1.2123506e-009  lua1    = 6.609476e-017   wua1    = 1.0164788e-016
+pua1    = -1.1762166e-022  ub1     = -1.8111009e-018  lub1    = 5.702946e-026   wub1    = -1.1393999e-025
+pub1    = 3.0977585e-032  uc1     = -1.1732308e-011  luc1    = -6.6645919e-018  wuc1    = -2.4998405e-017
+puc1    = 2.9463643e-024  prt     = 0               at      = 10000         
+noimod  = 2               noia    = 7.29e+018          noib    = 8.32e4           noic    = 1.7e-012     
+em      = 42000000        ef      = 1.05             
+rsh     = 5.8             js      = 2.74e-7          jsw     = 5.6e-13               cj      = cjp        
+mj      = 0.418             cjsw    = cjswp    pbsw = 0.738         mjsw    = 0.268            pb      = 0.7881             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+ptc     = 0               tt      = 0               ijth    = 0.1             tcj     = 1e-3             
+tcjsw   = 5e-4               tcjswg  = 5e-4               tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3             
+cjswg   = cjswgp	   mjswg   = 0.268	     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch.7  pmos  level = 49
+lmin    = '5e-007-dxlp'          lmax    = '1.2e-006-dxlp'        wmin    = '1.2e-006-dxw'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 1             
+hspver  = 2000.2          lref    = 5e-007          wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxlp'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp     
+toxm    = toxp       wint    = 2e-008          lint    = 2e-008          dlc     = 6e-9             
+dwc	 = 5e-9           hdif    = hdifp          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop            cgdo    = cgop             
+xpart   = 0             
+vth0    = '-0.44595527+dvthp'     lvth0   = -4.0084522e-009  wvth0   = 1.7795545e-008  pvth0   = -3.846516e-015
+k1      = 0.65672495      lk1     = -1.9289844e-009  wk1     = 1.3237875e-009  pk1     = 8.2700095e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.10913536   
+lvoff   = -1.4036241e-009  wvoff   = 4.5524185e-009  pvoff   = 2.3079096e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.00042772532 
+lcit    = 8.2899053e-011  wcit    = 8.3838623e-011  pcit    = -9.6162901e-017  u0      = 0.0092347749  
+lu0     = -5.2371227e-010  wu0     = -9.8523512e-010  pu0     = -1.4424435e-017  ua      = -1.1114125e-010
+lua     = -6.9994766e-017  wua     = 1.2402865e-016  pua     = -6.1544257e-023  ub      = 1.7549034e-018
+lub     = -9.6805452e-026  wub     = -4.4205837e-025  pub     = 1.4712924e-031  uc      = -1.2522136e-011
+luc     = -2.6347217e-017  wuc     = -6.4296853e-017  puc     = 2.9339301e-023  ngate   = 5e+020        
+xj      = 1.5000001e-007  w0      = 0               prwg    = 0               prwb    = 0             
+wr      = 1               rdsw    = 500             a0      = 0.75523533      la0     = 2.7761794e-007
+wa0     = 5.3248592e-008  pa0     = -6.0774953e-014  ags     = 0.010349729     lags    = 2.2150061e-007
+wags    = -1.5246063e-008  pags    = -4.606203e-014  a1      = 0               a2      = 0.4           
+b0      = 0               b1      = 0               vsat    = 45855.353       lvsat   = 0.016223911   
+wvsat   = 0.0015929338    pvsat   = -1.8270951e-009  keta    = 0.031526027     lketa   = -9.9998897e-009
+wketa   = -5.268254e-009  pketa   = 7.0968221e-015  dwg     = 0               dwb     = 0             
+alpha0  = 0               beta0   = 20.949866       lbeta0  = 1.0124338e-006  wbeta0  = 1.0595176e-006
+pbeta0  = -6.7314031e-013  pclm    = 0.86054835      lpclm   = 1.6806867e-007  wpclm   = -2.6021858e-008
+ppclm   = 4.0388418e-014  pdiblc1 = 0.00014524559   lpdiblc1= 1.2619866e-009  wpdiblc1= 2.5382471e-010
+ppdiblc1= -2.6252472e-016  pdiblc2 = 1e-005          pdiblcb = 0               drout   = 0             
+pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4e-008          delta   = 0.01          
+eta0    = 0.0002          etab    = -1.3367013e-005  letab   = 3.8619639e-012  wetab   = 3.3535449e-011
+petab   = -3.846516e-017  dsub    = 0               elm     = 5               alpha1  = 1.1413895     
+lalpha1 = 3.3351388e-006  walpha1 = 3.499878e-006   palpha1 = -2.4617703e-012  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.84               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.27311357     lkt1    = 1.5144891e-009  wkt1    = -5.7454777e-009  pkt1    = 1.3366643e-014
+kt1l    = 0               kt2     = -0.026984832    lkt2    = 1.6661378e-009  wkt2    = 1.3173167e-009
+pkt2    = 9.1354756e-016  ute     = -0.73083335     lute    = -2.2234924e-008  wute    = -9.9300566e-008
+pute    = 8.2123117e-014  ua1     = 1.3918083e-009  lua1    = -1.4122802e-017  wua1    = -3.2928885e-016
+pua1    = 7.5007063e-023  ub1     = -1.3750497e-018  lub1    = -1.3788543e-025  wub1    = 3.2807723e-026
+pub1    = -3.4618644e-032  uc1     = -7.8568536e-011  luc1    = 2.3211202e-017  wuc1    = 7.7884993e-017
+puc1    = -4.3042514e-023  prt     = 0               at      = 10000         
+noimod  = 2               noia    = 7.29e+018          noib    = 8.32e4           noic    = 1.7e-012     
+em      = 42000000        ef      = 1.05             
+rsh     = 5.8             js      = 2.74e-7          jsw     = 5.6e-13               cj      = cjp        
+mj      = 0.418             cjsw    = cjswp    pbsw = 0.738         mjsw    = 0.268            pb      = 0.7881             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+ptc     = 0               tt      = 0               ijth    = 0.1             tcj     = 1e-3             
+tcjsw   = 5e-4               tcjswg  = 5e-4               tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3             
+cjswg   = cjswgp	   mjswg   = 0.268	     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch.8  pmos  level = 49
+lmin    = '1.2e-006-dxlp'        lmax    = 2.0001e-005     wmin    = '1.2e-006-dxw'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 1             
+hspver  = 2000.2          lref    = 1.2e-006        wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxlp'       xw      = '0+dxw'               lmlt    = 1             
+wmlt    = 1               llc     = -0.048        lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp     
+toxm    = toxp       wint    = 2e-008          lint    = 2e-008          dlc     = 6e-9             
+dwc	 = 5e-9           hdif    = hdifp          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop            cgdo    = cgop             
+xpart   = 0             
+vth0    = '-0.4190351+dvthp'      lvth0   = -3.4885896e-008  wvth0   = 1.5480824e-008  pvth0   = -1.1915316e-015
+k1      = 0.67237953      lk1     = -1.988479e-008  wk1     = -2.678612e-008  pk1     = 4.0512074e-014
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.01e+017       voff    = -0.099095758  
+lvoff   = -1.2919043e-008  wvoff   = -2.0428567e-009  pvoff   = 9.8726903e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.00061303409 
+lcit    = -1.296501e-010  u0      = 0.0092480697    lu0     = -5.3896137e-010  wu0     = -9.6071004e-010
+pu0     = -4.2554699e-017  ua      = -8.5313245e-011  lua     = -9.9619485e-017  wua     = 8.4588981e-017
+pua     = -1.6306961e-023  ub      = 1.4674696e-018  lub     = 2.3288105e-025  wub     = -5.319384e-025
+pub     = 2.5022163e-031  uc      = -3.4417985e-011  luc     = -1.2326778e-018  wuc     = -8.432208e-017
+puc     = 5.2308237e-023  ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0             
+prwg    = 0               prwb    = 0               wr      = 1               rdsw    = 500           
+a0      = 0.98634889      la0     = 1.2530682e-008  wa0     = 2.8014034e-008  pa0     = -3.1830915e-014
+ags     = 0.093735397     lags    = 1.2585725e-007  wags    = 1.5235295e-008  pags    = -8.1024148e-014
+a1      = 0               a2      = 0.4             b0      = 0               b1      = 0             
+vsat    = 60000           keta    = 0.01113593      lketa   = 1.3387552e-008  wketa   = 3.1044944e-008
+pketa   = -3.4554416e-014  dwg     = 0               dwb     = 0               alpha0  = 0             
+beta0   = 22.035853       lbeta0  = -2.3319339e-007  wbeta0  = -3.138912e-007  pbeta0  = 9.0215963e-013
+pclm    = 0.57460884      lpclm   = 4.9604129e-007  wpclm   = -2.3458403e-008  ppclm   = 3.7448136e-014
+pdiblc1 = -2.2639149e-005  lpdiblc1= 1.4545504e-009  wpdiblc1= -1.2155599e-011  ppdiblc1= 4.2554699e-017
+pdiblc2 = 1e-005          pdiblcb = 0               drout   = 0               pvag    = 0             
+pscbe1  = 2e+008          pscbe2  = 3.9040568e-007  lpscbe2 = -4.0191532e-013  delta   = 0.01          
+eta0    = 0.0002          etab    = -1.3262318e-005  letab   = 3.7418787e-012  wetab   = 3.7842889e-012
+petab   = -4.3405793e-018  dsub    = 0               elm     = 5               alpha1  = 4.9061045     
+lalpha1 = -9.829894e-007  walpha1 = -9.4516072e-007  palpha1 = 2.6366892e-012  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.84               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.2751169      lkt1    = 3.8123023e-009  wkt1    = 1.1992634e-008  pkt1    = -6.9789707e-015
+kt1l    = 0               kt2     = -0.021667438    lkt2    = -4.4329138e-009  wkt2    = -6.9104224e-010
+pkt2    = 3.2171353e-015  ute     = -0.79709953     lute    = 5.377238e-008   wute    = -6.851334e-008
+pute    = 4.6810169e-014  ua1     = 1.663545e-009   lua1    = -3.2580481e-016  wua1    = -6.2748327e-016
+pua1    = 4.1703605e-022  ub1     = -1.7223029e-018  lub1    = 2.6041402e-025  wub1    = 2.7123613e-025
+pub1    = -3.0809602e-031  uc1     = -8.9239157e-011  luc1    = 3.5450404e-017  wuc1    = 6.1446961e-017
+puc1    = -2.4188091e-023  prt     = 0               at      = 10000         
+noimod  = 2               noia    = 7.29e+018          noib    = 8.32e4           noic    = 1.7e-012     
+em      = 42000000        ef      = 1.05             
+rsh     = 5.8             js      = 2.74e-7          jsw     = 5.6e-13               cj      = cjp        
+mj      = 0.418             cjsw    = cjswp    pbsw = 0.738         mjsw    = 0.268            pb      = 0.7881             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+ptc     = 0               tt      = 0               ijth    = 0.1             tcj     = 1e-3             
+tcjsw   = 5e-4               tcjswg  = 5e-4               tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3             
+cjswg   = cjswgp	   mjswg   = 0.268	     pbswg   = 0.6      tlev=1     tlevc = 1            
*
.ENDL MOS
*
.LIB MOS_3V
***********************************************************************
*                        3.3V nominal NMOS                            *
***********************************************************************

.model  nch3.0  nmos  level = 49
+lmin    = 3.5e-007        lmax    = '5e-007-dxl3'          wmin    = 2.2e-007        wmax    = '5e-007-dxw3'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 3.5e-007        wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.0154               lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxn3        toxm    = toxn3        wint    = 1e-008          lint    = 2e-008        
+dwc	 = 1.5e-8            dlc = 4e-8     hdif    = hdifn3          ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgon3     
+cgdo    = cgon3       xpart   = 0             
+vth0    = '0.82591+dvthn3'         lvth0   = 5.5000157e-009  wvth0   = -2.9712e-009    pvth0   = -8.5876107e-015
+k1      = 1.5353403       lk1     = -2.4856278e-007  wk1     = -8.4650057e-008  pk1     = 2.130213e-014 
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.994e+017      voff    = -0.1289152    
+lvoff   = 1.0200949e-008  wvoff   = 4.88256e-009    pvoff   = -2.9131118e-016  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.047532857     lu0     = -1.1379343e-009  wu0     = -1.1848251e-008  pu0     = 6.2601558e-015
+ua      = -4.615116e-010  lua     = -1.3403096e-016  wua     = -6.8914608e-016  pua     = 3.4063077e-022
+ub      = 2.3228857e-018  lub     = 2.6678237e-025  wub     = 3.8371886e-025  pub     = -2.7037319e-031
+uc      = 3.0986357e-010  luc     = -1.9945459e-017  wuc     = -5.2827634e-017  puc     = 5.4529811e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 343.8965        a0      = 1.2328257     
+la0     = -3.3644924e-007  wa0     = -1.2178834e-007  pa0     = 3.6171138e-014  ags     = -0.63112571   
+lags    = 3.5731137e-007  wags    = 2.6502514e-007  pags    = -1.2456587e-013  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 88872.229     
+lvsat   = -0.0028726519   wvsat   = -0.0089939657   pvsat   = 4.6670478e-009  keta    = -0.13797883   
+lketa   = 3.6465736e-008  wketa   = 2.9784206e-008  pketa   = -9.39782e-015   dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 22.067743       lbeta0  = -1.0481639e-006
+wbeta0  = -8.6646857e-007  pbeta0  = 3.4593202e-013  pclm    = 0.25225286      lpclm   = 3.336044e-007 
+wpclm   = 3.6144343e-007  ppclm   = -1.333659e-013  pdiblc1 = -0.0034474057   lpdiblc1= 1.9291779e-009
+wpdiblc1= -4.1688686e-010  ppdiblc1= 2.4397311e-016  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 1.1714286e-008
+lpscbe2 = 1.2643714e-014  wpscbe2 = 1.3577143e-014  ppscbe2 = -6.0689829e-021  delta   = 0.01          
+eta0    = 0.0001          etab    = 0.0035727586    letab   = -1.821896e-009  wetab   = -6.0776914e-011
+petab   = 2.7826286e-017  dsub    = 0               elm     = 5               alpha1  = 7.07436       
+lalpha1 = -1.2357966e-006  walpha1 = -1.129392e-006  palpha1 = 4.5426337e-013  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.16159229     lkt1    = -3.506102e-008  wkt1    = -9.2715429e-009  pkt1    = 3.9144939e-015
+kt1l    = 0               kt2     = 0.0056377429    lkt2    = -8.1286439e-009  wkt2    = 4.3817143e-010
+pkt2    = -3.3379406e-016  ute     = -0.11972286     lute    = -3.1647217e-007  wute    = -1.7772343e-007
+pute    = 2.488283e-014   ua1     = 4.3625871e-009  lua1    = -4.5447831e-016  wua1    = -4.8034286e-018
+pua1    = -1.518763e-022  ub1     = -4.0498914e-018  lub1    = 2.9561004e-025  wub1    = -8.4205714e-026
+pub1    = 1.2744864e-031  uc1     = 3.7773857e-011  luc1    = -4.54099e-017   wuc1    = -3.3406491e-017
+puc1    = 1.3873695e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.13e+019          noib    = 7.24e4           noic    = -6.6e-012     
+em      = 42000000        ef      = 0.87                   
 +rsh     = 6.5             js      = 3.65e-7          jsw     = 4.0e-13               cj      = cjn3        
+mj      = 0.3097            cjsw    = cjswn3          mjsw    = 0.1211            pb      = 0.6384             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 5.0e-4               tcjswg  = 5.0e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3 
+cjswg   = cjswgn3	   mjswg   = 0.1211     pbswg   = 0.6      tlev=1     tlevc = 1             
.model  nch3.1  nmos  level = 49
+lmin    = '5e-007-dxl3'          lmax    = '1.2e-006-dxl3'        wmin    = 2.2e-007        wmax    = '5e-007-dxw3'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 5e-007          wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.0154       lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxn3        toxm    = toxn3        wint    = 1e-008          lint    = 2e-008        
+dwc	 = 1.5e-8                   dlc = 4e-8     hdif    = hdifn3          ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgon3     
+cgdo    = cgon3       xpart   = 0             
+vth0    = '0.79900561+dvthn3'      lvth0   = 1.7526277e-008  wvth0   = -2.0666008e-008  pvth0   = -6.7803149e-016
+k1      = 0.97206171      lk1     = 3.2227423e-009  wk1     = 1.2556114e-008  pk1     = -2.2149029e-014
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.994e+017      voff    = -0.13587883   
+lvoff   = 1.3313692e-008  wvoff   = 6.1634351e-009  pvoff   = -8.6386235e-016  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.032100949     lu0     = 5.7601287e-009  wu0     = 2.0891559e-009  pu0     = 3.0134733e-017
+ua      = -4.6517365e-010  lua     = -1.3239402e-016  wua     = -6.3063184e-017  pua     = 6.0771712e-023
+ub      = 1.4332959e-018  lub     = 6.6442901e-025  wub     = 1.9346253e-025  pub     = -1.8532861e-031
+uc      = 2.3916398e-011  luc     = 1.0787293e-016  wuc     = 1.8343146e-017  puc     = -2.6360358e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 343.8965        a0      = 0.47312041    
+la0     = 3.1390347e-009  wa0     = -2.176751e-008  pa0     = -8.5381744e-015  ags     = 0.21216569    
+lags    = -1.9639894e-008  wags    = 3.534289e-008   pags    = -2.1897906e-014  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 78438.237     
+lvsat   = 0.0017913425    wvsat   = -0.00092392163  pvsat   = 1.0597381e-009  keta    = 0.020776714   
+lketa   = -3.4497991e-008  wketa   = -1.2121954e-008  pketa   = 9.3342336e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 21.616578       lbeta0  = -8.4649302e-007
+wbeta0  = -8.133551e-008  pbeta0  = -5.0224555e-015  pclm    = 0.51940633      lpclm   = 2.141868e-007 
+wpclm   = 2.0746776e-009  ppclm   = 2.7271933e-014  pdiblc1 = 6.3866592e-005  lpdiblc1= 3.596392e-010 
+wpdiblc1= -1.1827592e-010  ppdiblc1= 1.1049402e-016  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.00032598719   letab   = -3.705892e-010
+wetab   = -2.6812139e-011  petab   = 1.2644032e-017  dsub    = 0               elm     = 5             
+alpha1  = 6.7362045       lalpha1 = -1.0846411e-006  walpha1 = -1.075249e-007  palpha1 = -2.5112278e-015
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.27237865     lkt1    = 1.4460486e-008  wkt1    = -2.3682122e-009  pkt1    = 8.2870516e-016
+kt1l    = 0               kt2     = -0.035892104    lkt2    = 1.0435198e-008  wkt2    = 2.0172637e-009
+pkt2    = -1.0396483e-015  ute     = -1.4365606      lute    = 2.7215431e-007  wute    = 8.5245551e-008
+pute    = -9.2664304e-014  ua1     = 1.9554122e-009  lua1    = 6.2152887e-016  wua1    = 9.475298e-017 
+pua1    = -1.9637801e-022  ub1     = -1.9794e-018    lub1    = -6.2989963e-025  wub1    = -1.4908457e-025
+pub1    = 1.5644949e-031  uc1     = -1.9792894e-011  luc1    = -1.9677562e-017  wuc1    = -2.7998273e-017
+puc1    = 1.1456221e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.13e+019          noib    = 7.24e4           noic    = -6.6e-012     
+em      = 42000000        ef      = 0.87             
+rsh     = 6.5             js      = 3.65e-7          jsw     = 4.0e-13               cj      = cjn3        
+mj      = 0.3097            cjsw    = cjswn3          mjsw    = 0.1211            pb      = 0.6384             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 5.0e-4               tcjswg  = 5.0e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3   
+cjswg   = cjswgn3	   mjswg   = 0.1211     pbswg   = 0.6      tlev=1     tlevc = 1           
.model  nch3.2  nmos  level = 49
+lmin    = '1.2e-006-dxl3'        lmax    = 2.0001e-005     wmin    = 2.2e-007        wmax    = '5e-007-dxw3'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 1.2e-006        wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.0154       lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxn3        toxm    = toxn3        wint    = 1e-008          lint    = 2e-008        
+dwc	 = 1.5e-8            dlc = 4e-8     hdif    = hdifn3          ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgon3     
+cgdo    = cgon3       xpart   = 0             
+vth0    = '0.78085992+dvthn3'      lvth0   = 3.8339387e-008  wvth0   = -2.745787e-008  pvth0   = 7.1122342e-015
+k1      = 1.0001588       lk1     = -2.900458e-008  wk1     = -2.9950948e-009  pk1     = -4.311792e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.994e+017      voff    = -0.12651596   
+lvoff   = 2.5744806e-009  wvoff   = 2.2014094e-009  pvoff   = 3.6805812e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.037452271     lu0     = -3.7783744e-010  wu0     = 2.8621403e-010  pu0     = 2.0981091e-015
+ua      = -6.6560164e-010  lua     = 9.7496877e-017  wua     = 1.8675873e-017  pua     = -3.2982986e-023
+ub      = 1.987058e-018   lub     = 2.926388e-026   wub     = -4.7561104e-026  pub     = 9.11255e-032  
+uc      = 9.8125188e-011  luc     = 2.2755445e-017  wuc     = -1.3498146e-017  puc     = 1.0161605e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 343.8965        a0      = 0.5436453     
+la0     = -7.7753018e-008  wa0     = -4.2922558e-009  pa0     = -2.8582291e-014  ags     = 0.019121442   
+lags    = 2.0178186e-007  wags    = -3.5327669e-009  pags    = 2.2692472e-014  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 80000         
+keta    = 0.014430135     lketa   = -2.7218465e-008  wketa   = -1.9769408e-009  pketa   = -2.3020969e-015
+dwg     = 0               dwb     = 0               alpha0  = 0               beta0   = 20.902793     
+lbeta0  = -2.7782165e-008  wbeta0  = -4.3084286e-008  pbeta0  = -4.889661e-014  pclm    = 0.49315433    
+lpclm   = 2.4429784e-007  wpclm   = -2.8172408e-008  ppclm   = 6.196534e-014   pdiblc1 = 8.6755195e-005
+lpdiblc1= 3.3338598e-010  wpdiblc1= 1.6927952e-011  ppdiblc1= -4.4584818e-017  pdiblc2 = 1e-005        
+pdiblcb = 0               drout   = 0               pvag    = 0               pscbe1  = 2e+008        
+pscbe2  = 3.9040568e-007  lpscbe2 = -4.0191532e-013  delta   = 0.01            eta0    = 0.0001        
+etab    = -1.1680467e-005  letab   = 1.6715602e-011  wetab   = 2.0578968e-012  petab   = -2.0469899e-017
+dsub    = 0               elm     = 5               alpha1  = 5.8225439       lalpha1 = -3.6672458e-008
+walpha1 = -5.7783195e-008  palpha1 = -5.9564961e-014  vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.31415697     lkt1    = 6.2380221e-008  wkt1    = 3.8961857e-009  pkt1    = -6.3565593e-015
+kt1l    = 0               kt2     = -0.024561055    lkt2    = -2.5615156e-009  wkt2    = -1.3229283e-009
+pkt2    = 2.7915519e-015  ute     = -1.0471741      lute    = -1.7447199e-007  wute    = -4.3598494e-008
+pute    = 5.5119815e-014  ua1     = 2.5828687e-009  lua1    = -9.8163649e-017  wua1    = -4.429087e-017
+pua1    = -3.6894715e-023  ub1     = -2.5702326e-018  lub1    = 4.7785323e-026  wub1    = -1.0337135e-025
+pub1    = 1.0401642e-031  uc1     = -8.1477544e-011  luc1    = 5.1074732e-017  wuc1    = -1.8734996e-017
+puc1    = 8.3124237e-025  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.13e+019          noib    = 7.24e4           noic    = -6.6e-012     
+em      = 42000000        ef      = 0.87             
+rsh     = 6.5             js      = 3.65e-7          jsw     = 4.0e-13               cj      = cjn3        
+mj      = 0.3097            cjsw    = cjswn3          mjsw    = 0.1211            pb      = 0.6384             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 5.0e-4               tcjswg  = 5.0e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3
+cjswg   = cjswgn3	   mjswg   = 0.1211     pbswg   = 0.6      tlev=1     tlevc = 1             
.model  nch3.3  nmos  level = 49
+lmin    = '1.2e-006-dxl3'        lmax    = 2.0001e-005     wmin    = '5e-007-dxw3'          wmax    = '1.2e-006-dxw3'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 1.2e-006        wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.0154       lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxn3        toxm    = toxn3        wint    = 1e-008          lint    = 2e-008        
+dwc	 = 1.5e-8             dlc = 4e-8     hdif    = hdifn3          ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgon3     
+cgdo    = cgon3       xpart   = 0             
+vth0    = '0.70243872+dvthn3'      lvth0   = 6.2991428e-008  wvth0   = 1.0184304e-008  pvth0   = -4.7207454e-015
+k1      = 0.99289461      lk1     = -1.4383753e-008  wk1     = 4.917014e-010   pk1     = -1.1329789e-014
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.994e+017      voff    = -0.077086019  
+lvoff   = 1.037349e-008   wvoff   = -2.1524964e-008  pvoff   = -6.2943273e-017  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.032671049     lu0     = 2.9878792e-009  wu0     = 2.5812007e-009  pu0     = 4.8256509e-016
+ua      = -9.5779914e-010  lua     = 1.028718e-016   wua     = 1.5893067e-016  pua     = -3.5562949e-023
+ub      = 2.3173719e-018  lub     = -2.7856251e-026  wub     = -2.0611176e-025  pub     = 1.1854316e-031
+uc      = 9.5130039e-011  luc     = 2.4386814e-017  wuc     = -1.2060475e-017  puc     = 9.3785476e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 343.8965        a0      = 0.53157417    
+la0     = -2.7367284e-008  wa0     = 1.5018887e-009  pa0     = -5.2767443e-014  ags     = 0.014786229   
+lags    = 2.1813259e-007  wags    = -1.4518643e-009  pags    = 1.4844122e-014  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 80000         
+keta    = 0.01856956      lketa   = -5.0825359e-008  wketa   = -3.9638648e-009  pketa   = 9.0292124e-015
+dwg     = 0               dwb     = 0               alpha0  = 0               beta0   = 20.457594     
+lbeta0  = 2.2003475e-007  wbeta0  = 1.7061145e-007  pbeta0  = -1.6784873e-013  pclm    = 0.58531687    
+lpclm   = 1.4718991e-007  wpclm   = -7.2410424e-008  ppclm   = 1.0857715e-013  pdiblc1 = 9.1589561e-005
+lpdiblc1= 2.2126827e-010  wpdiblc1= 1.4607456e-011  ppdiblc1= 9.23168e-018    pdiblc2 = 1e-005        
+pdiblcb = 0               drout   = 0               pvag    = 0               pscbe1  = 2e+008        
+pscbe2  = 3.9040568e-007  lpscbe2 = -4.0191532e-013  delta   = 0.01            eta0    = 0.0001        
+etab    = -1.1787532e-005  letab   = 1.7780585e-011  wetab   = 2.1092883e-012  petab   = -2.0981091e-017
+dsub    = 0               elm     = 5               alpha1  = 5.0825368       lalpha1 = 6.3695243e-007
+walpha1 = 2.9742023e-007  palpha1 = -3.8290491e-013  vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.32795675     lkt1    = 1.3950351e-008  wkt1    = 1.052008e-008   pkt1    = 1.6889778e-014
+kt1l    = 0               kt2     = -0.030882401    lkt2    = 8.8710304e-009  wkt2    = 1.7113178e-009
+pkt2    = -2.6960702e-015  ute     = -1.2375116      lute    = 2.5944838e-007  wute    = 4.7763519e-008
+pute    = -1.5316196e-013  ua1     = 2.3223782e-009  lua1    = 6.5984493e-016  wua1    = 8.074455e-017 
+pua1    = -4.0073883e-022  ub1     = -2.5207709e-018  lub1    = -5.4197447e-025  wub1    = -1.2711294e-025
+pub1    = 3.8710113e-031  uc1     = -7.582862e-011  luc1    = 3.175983e-017   wuc1    = -2.1446479e-017
+puc1    = 1.0102395e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.13e+019          noib    = 7.24e4           noic    = -6.6e-012     
+em      = 42000000        ef      = 0.87             
+rsh     = 6.5             js      = 3.65e-7          jsw     = 4.0e-13               cj      = cjn3        
+mj      = 0.3097            cjsw    = cjswn3          mjsw    = 0.1211            pb      = 0.6384             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 5.0e-4               tcjswg  = 5.0e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3  
+cjswg   = cjswgn3	   mjswg   = 0.1211     pbswg   = 0.6      tlev=1     tlevc = 1            
.model  nch3.4  nmos  level = 49
+lmin    = '5e-007-dxl3'          lmax    = '1.2e-006-dxl3'        wmin    = '5e-007-dxw3'          wmax    = '1.2e-006-dxw3'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 5e-007          wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.0154       lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxn3        toxm    = toxn3        wint    = 1e-008          lint    = 2e-008        
+dwc	 = 1.5e-8         dlc = 4e-8     hdif    = hdifn3          ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgon3     
+cgdo    = cgon3       xpart   = 0             
+vth0    = '0.71176862+dvthn3'      lvth0   = 5.229004e-008   wvth0   = 2.120775e-008   pvth0   = -1.7364638e-014
+k1      = 1.0102394       lk1     = -3.4278259e-008  wk1     = -5.7691886e-009  pk1     = -4.1485483e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.994e+017      voff    = -0.051050709  
+lvoff   = -1.9489011e-008  wvoff   = -3.4554064e-008  pvoff   = 1.4881435e-014  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.026980775     lu0     = 9.5146234e-009  wu0     = 4.5468396e-009  pu0     = -1.7720228e-015
+ua      = -1.0488618e-009  lua     = 2.0732069e-016  wua     = 2.1710713e-016  pua     = -1.0229135e-022
+ub      = 1.9330956e-018  lub     = 4.1290862e-025  wub     = -4.6441332e-026  pub     = -6.4598823e-032
+uc      = 2.684182e-011   luc     = 1.027134e-016   wuc     = 1.6938943e-017  puc     = -2.3883785e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 343.8965        a0      = 0.49357449    
+la0     = 1.6218346e-008  wa0     = -3.1585469e-008  pa0     = -1.4816244e-014  ags     = 0.16487152    
+lags    = 4.5984766e-008  wags    = 5.8044094e-008  pags    = -5.3397742e-014  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 75544.596     
+lvsat   = 0.0051103485    wvsat   = 0.00046502596   pvsat   = -5.3338478e-010  keta    = -0.01097239   
+lketa   = -1.6940742e-008  wketa   = 3.1176159e-009  pketa   = 9.0675412e-016  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 20.869097       lbeta0  = -2.5195985e-007
+wbeta0  = 2.7745509e-007  pbeta0  = -2.9039838e-013  pclm    = 0.71688133      lpclm   = -3.7145244e-009
+wpclm   = -9.2713322e-008  ppclm   = 1.3186457e-013  pdiblc1 = 3.1082016e-005  lpdiblc1= 2.9067043e-010
+wpdiblc1= -1.0253932e-010  ppdiblc1= 1.4359903e-016  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.0002828521    letab   = -3.2017108e-010
+wetab   = -6.1072947e-012  petab   = -1.155667e-017  dsub    = 0               elm     = 5             
+alpha1  = 6.0035396       lalpha1 = -4.1943782e-007  walpha1 = 2.4415423e-007  palpha1 = -3.2180881e-013
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.33109081     lkt1    = 1.7545111e-008  wkt1    = 2.5813622e-008  pkt1    = -6.5191473e-016
+kt1l    = 0               kt2     = -0.022801085    lkt2    = -3.9823887e-010  wkt2    = -4.2664253e-009
+pkt2    = 4.1604012e-015  ute     = -0.96509996     lute    = -5.3007833e-008  wute    = -1.4105556e-007
+pute    = 6.3413523e-014  ua1     = 3.059088e-009   lua1    = -1.8516119e-016  wua1    = -4.3501138e-016
+pua1    = 1.9083322e-022  ub1     = -3.18254e-018   lub1    = 2.1707471e-025  wub1    = 4.2842265e-025
+pub1    = -2.5009819e-031  uc1     = -5.1630304e-011  luc1    = 4.0043619e-018  wuc1    = -1.2716316e-017
+puc1    = 8.8897463e-026  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.13e+019          noib    = 7.24e4           noic    = -6.6e-012     
+em      = 42000000        ef      = 0.87             
+rsh     = 6.5             js      = 3.65e-7          jsw     = 4.0e-13               cj      = cjn3        
+mj      = 0.3097            cjsw    = cjswn3          mjsw    = 0.1211            pb      = 0.6384             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 5.0e-4               tcjswg  = 5.0e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3   
+cjswg   = cjswgn3	   mjswg   = 0.1211     pbswg   = 0.6      tlev=1     tlevc = 1           
.model  nch3.5  nmos  level = 49
+lmin    = 3.5e-007        lmax    = '5e-007-dxl3'          wmin    = '5e-007-dxw3'          wmax    = '1.2e-006-dxw3'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 3.5e-007        wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.0154       lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxn3        toxm    = toxn3        wint    = 1e-008          lint    = 2e-008        
+ dwc	 = 1.5e-8              dlc = 4e-8     hdif    = hdifn3          ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgon3     
+cgdo    = cgon3       xpart   = 0             
+vth0    = '0.91955137+dvthn3'      lvth0   = -4.0588852e-008  wvth0   = -4.7919058e-008  pvth0   = 1.3535046e-014
+k1      = 1.327925        lk1     = -1.7628372e-007  wk1     = 1.4909266e-008  pk1     = -1.3391818e-014
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.994e+017      voff    = -0.13510508   
+lvoff   = 1.8083293e-008  wvoff   = 7.8537024e-009  pvoff   = -4.0748365e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.047669457     lu0     = 2.6678237e-010  wu0     = -1.1913819e-008  pu0     = 5.5858918e-015
+ua      = -7.5609067e-010  lua     = 7.6451989e-017  wua     = -5.4774812e-016  pua     = 2.3959895e-022
+ub      = 1.4574211e-018  lub     = 6.2553512e-025  wub     = 7.9914185e-025  pub     = -4.4257451e-031
+uc      = 2.1475154e-010  luc     = 1.8717755e-017  wuc     = -7.1738606e-018  puc     = -1.3105362e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 343.8965        a0      = 0.62398069    
+la0     = -4.2073224e-008  wa0     = 1.7045727e-007  pa0     = -1.0512935e-013  ags     = 0.60668777    
+lags    = -1.515071e-007  wags    = -3.2912533e-007  pags    = 1.1966699e-013  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 78127.109     
+lvsat   = 0.0039559653    wvsat   = -0.0038363081   pvsat   = 1.3893116e-009  keta    = -0.1474894    
+lketa   = 4.408236e-008   wketa   = 3.4349279e-008  pketa   = -1.30538e-014   dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 22.406491       lbeta0  = -9.391751e-007
+wbeta0  = -1.0290679e-006  pbeta0  = 2.9361739e-013  pclm    = 0.12990229      lpclm   = 2.5866511e-007
+wpclm   = 4.201717e-007   ppclm   = -9.7395037e-014  pdiblc1 = -0.0065649225   lpdiblc1= 3.2390844e-009
+wpdiblc1= 1.0795212e-009  ppdiblc1= -3.8478201e-016  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.0036579163    letab   = -1.8288248e-009
+wetab   = -1.0165262e-010  petab   = 3.1152089e-017  dsub    = 0               elm     = 5             
+alpha1  = 7.6218326       lalpha1 = -1.1428148e-006  walpha1 = -1.3921788e-006  palpha1 = 4.0963207e-013
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.51568749     lkt1    = 1.0005983e-007  wkt1    = 1.6069415e-007  pkt1    = -6.0943512e-014
+kt1l    = 0               kt2     = -0.012162177    lkt2    = -5.1538308e-009  wkt2    = 8.982133e-009 
+pkt2    = -1.7617043e-015  ute     = -0.62517429     lute    = -2.0495461e-007  wute    = 6.4893257e-008
+pute    = -2.8645599e-014  ua1     = 3.2746669e-009  lua1    = -2.8152494e-016  wua1    = 5.1739831e-016
+pua1    = -2.3489391e-022  ub1     = -9.5496686e-019  lub1    = -7.786505e-025  wub1    = -1.5697695e-024
+pub1    = 6.430937e-031   uc1     = 1.456871e-010   luc1    = -8.4196516e-017  wuc1    = -8.5204847e-017
+puc1    = 3.2491271e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.13e+019          noib    = 7.24e4           noic    = -6.6e-012     
+em      = 42000000        ef      = 0.87             
+rsh     = 6.5             js      = 3.65e-7          jsw     = 4.0e-13               cj      = cjn3        
+mj      = 0.3097            cjsw    = cjswn3          mjsw    = 0.1211            pb      = 0.6384             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 5.0e-4               tcjswg  = 5.0e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3  
+cjswg   = cjswgn3	   mjswg   = 0.1211     pbswg   = 0.6      tlev=1     tlevc = 1            
.model  nch3.6  nmos  level = 49
+lmin    = 3.5e-007        lmax    = '5e-007-dxl3'          wmin    = '1.2e-006-dxw3'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 3.5e-007        wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.0154       lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxn3        toxm    = toxn3        wint    = 1e-008          lint    = 2e-008        
+dwc	 = 1.5e-8               dlc = 4e-8     hdif    = hdifn3          ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgon3     
+cgdo    = cgon3       xpart   = 0             
+vth0    = '0.87601378+dvthn3'      lvth0   = -2.8215109e-008  wvth0   = 3.4553028e-009  pvth0   = -1.0659703e-015
+k1      = 1.4448691       lk1     = -2.4404282e-007  wk1     = -1.2308479e-007  pk1     = 6.6563922e-014
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.994e+017      voff    = -0.079764919  
+lvoff   = -5.5350647e-009  wvoff   = -5.7447688e-008  pvoff   = 2.3794826e-014  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.034145324     lu0     = 6.3857481e-009  wu0     = 4.0446581e-009  pu0     = -1.6344878e-015
+ua      = -1.0269011e-009  lua     = 8.9694998e-017  wua     = -2.2819184e-016  pua     = 2.239722e-022 
+ub      = 1.6520136e-018  lub     = 6.7304589e-025  wub     = 5.6952276e-025  pub     = -4.9863721e-031
+uc      = 3.4436144e-010  luc     = -4.026681e-017  wuc     = -1.6011354e-016  puc     = 5.6496425e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 343.8965        a0      = 0.46400517    
+la0     = 1.7588154e-008  wa0     = 3.5922838e-007  pa0     = -1.7552977e-013  ags     = 1.2002695     
+lags    = -3.291337e-007  wags    = -1.0295518e-006  pags    = 3.2926638e-013  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 60724.587     
+lvsat   = 0.0082349       wvsat   = 0.016698668     pvsat   = -3.6598313e-009  keta    = -0.1160819    
+lketa   = 2.3496348e-008  wketa   = -2.7115696e-009  pketa   = 1.1237696e-014  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 21.007955       lbeta0  = -3.9926263e-007
+wbeta0  = 6.212051e-007   pbeta0  = -3.4347931e-013  pclm    = -0.14223832     lpclm   = 3.7988586e-007
+wpclm   = 7.4129762e-007  ppclm   = -2.4043552e-013  pdiblc1 = -0.0075145172   lpdiblc1= 3.7311452e-009
+wpdiblc1= 2.200043e-009   ppdiblc1= -9.6541376e-016  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.0043991732    letab   = -2.220281e-009
+wetab   = -9.7633582e-010  petab   = 4.9307048e-016  dsub    = 0               elm     = 5             
+alpha1  = 5.719536        lalpha1 = -4.4737168e-007  walpha1 = 8.5253107e-007  palpha1 = -4.1099077e-013
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.23356665     lkt1    = -7.5958263e-009  wkt1    = -1.7220844e-007  pkt1    = 6.6090158e-014
+kt1l    = 0               kt2     = -0.011688395    lkt2    = -1.8388932e-009  wkt2    = 8.4230701e-009
+pkt2    = -5.6733307e-015  ute     = -0.62897127     lute    = -1.7101371e-007  wute    = 6.9373702e-008
+pute    = -6.8695863e-014  ua1     = 3.7926851e-009  lua1    = -7.2449604e-016  wua1    = -9.3863261e-017
+pua1    = 2.8781198e-022  ub1     = -2.0194945e-018  lub1    = 1.3571993e-025  wub1    = -3.1362694e-025
+pub1    = -4.3586341e-031  uc1     = 1.1963211e-010  luc1    = -3.4800117e-017  wuc1    = -5.4459962e-017
+puc1    = -2.5796481e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.13e+019          noib    = 7.24e4           noic    = -6.6e-012     
+em      = 42000000        ef      = 0.87             
+rsh     = 6.5             js      = 3.65e-7          jsw     = 4.0e-13               cj      = cjn3        
+mj      = 0.3097            cjsw    = cjswn3          mjsw    = 0.1211            pb      = 0.6384             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 5.0e-4               tcjswg  = 5.0e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3 
+cjswg   = cjswgn3	   mjswg   = 0.1211     pbswg   = 0.6      tlev=1     tlevc = 1             
.model  nch3.7  nmos  level = 49
+lmin    = '5e-007-dxl3'          lmax    = '1.2e-006-dxl3'        wmin    = '1.2e-006-dxw3'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 5e-007          wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.0154       lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxn3        toxm    = toxn3        wint    = 1e-008          lint    = 2e-008        
+dwc	 = 1.5e-8              dlc = 4e-8     hdif    = hdifn3          ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgon3     
+cgdo    = cgon3       xpart   = 0             
+vth0    = '0.75912412+dvthn3'      lvth0   = 2.4034566e-008  wvth0   = -3.4671748e-008  pvth0   = 1.5976821e-014
+k1      = 0.98885137      lk1     = -4.0202878e-008  wk1     = 1.9468722e-008  pk1     = 2.842502e-015 
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.994e+017      voff    = -0.088765975  
+lvoff   = -1.5115926e-009  wvoff   = 9.9499492e-009  pvoff   = -6.3319182e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.035243779     lu0     = 5.8947386e-009  wu0     = -5.2035056e-009  pu0     = 2.4994414e-015
+ua      = -7.6794002e-010  lua     = -2.6060599e-017  wua     = -1.1438058e-016  pua     = 1.7309857e-022
+ub      = 2.1780519e-018  lub     = 4.3790675e-025  wub     = -3.3548975e-025  pub     = -9.4096617e-032
+uc      = 6.8846804e-011  luc     = 8.2888232e-017  wuc     = -3.2626937e-017  puc     = -4.9008655e-025
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 343.8965        a0      = 0.41153641    
+la0     = 4.104169e-008   wa0     = 6.5219462e-008  pa0     = -4.4107789e-014  ags     = -0.014151361  
+lags    = 2.1371243e-007  wags    = 2.6929109e-007  pags    = -2.5131638e-013  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 80544.585     
+lvsat   = -0.00062463937  wvsat   = -0.0054349615   pvsat   = 6.2339009e-009  keta    = 0.012782752   
+lketa   = -3.4106152e-008  wketa   = -2.4913452e-008  pketa   = 2.1161937e-014  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 20.578577       lbeta0  = -2.0733086e-007
+wbeta0  = 6.2026834e-007  pbeta0  = -3.4306058e-013  pclm    = 0.68799443      lpclm   = 8.7718184e-009
+wpclm   = -5.8626781e-008  ppclm   = 1.1713068e-013  pdiblc1 = -2.602671e-005  lpdiblc1= 3.8378999e-010
+wpdiblc1= -3.5151025e-011  ppdiblc1= 3.3717954e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.00017901198   letab   = -3.3386894e-010
+wetab   = 1.1642405e-010  petab   = 4.6068135e-018  dsub    = 0               elm     = 5             
+alpha1  = 5.1949218       lalpha1 = -2.1286912e-007  walpha1 = 1.1983233e-006  palpha1 = -5.6555988e-013
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.31867868     lkt1    = 3.0449255e-008  wkt1    = 1.1167315e-008  pkt1    = -1.5878804e-014
+kt1l    = 0               kt2     = -0.028689726    lkt2    = 5.7607018e-009  wkt2    = 2.6821707e-009
+pkt2    = -3.1071487e-015  ute     = -1.1488459      lute    = 6.1370269e-008  wute    = 7.5764693e-008
+pute    = -7.1552636e-014  ua1     = 2.6647374e-009  lua1    = -2.203034e-016  wua1    = 3.0322318e-017
+pua1    = 2.3230102e-022  ub1     = -3.0262844e-018  lub1    = 5.8575505e-025  wub1    = 2.4404104e-025
+pub1    = -6.8514099e-031  uc1     = -9.9731848e-011  luc1    = 6.3255573e-017  wuc1    = 4.4043507e-017
+puc1    = -6.9827531e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.13e+019          noib    = 7.24e4           noic    = -6.6e-012     
+em      = 42000000        ef      = 0.87             
+rsh     = 6.5             js      = 3.65e-7          jsw     = 4.0e-13               cj      = cjn3        
+mj      = 0.3097            cjsw    = cjswn3          mjsw    = 0.1211            pb      = 0.6384             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 5.0e-4               tcjswg  = 5.0e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3  
+cjswg   = cjswgn3	   mjswg   = 0.1211     pbswg   = 0.6      tlev=1     tlevc = 1            
.model  nch3.8  nmos  level = 49
+lmin    = '1.2e-006-dxl3'        lmax    = 2.0001e-005     wmin    = '1.2e-006-dxw3'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 1.2e-006        wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.0154       lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxn3        toxm    = toxn3        wint    = 1e-008          lint    = 2e-008        
+dwc	 = 1.5e-8               dlc = 4e-8     hdif    = hdifn3          ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgon3     
+cgdo    = cgon3       xpart   = 0             
+vth0    = '0.71852081+dvthn3'      lvth0   = 7.0606562e-008  wvth0   = -8.7925638e-009  pvth0   = -1.3706603e-014
+k1      = 0.96920001      lk1     = -1.7662764e-008  wk1     = 2.8451335e-008  pk1     = -7.460556e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.994e+017      voff    = -0.11074673   
+lvoff   = 2.3700333e-008  wvoff   = 1.8194675e-008  pvoff   = -1.5788619e-014  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.039113673     lu0     = 1.4559706e-009  wu0     = -5.0210956e-009  pu0     = 2.2902172e-015
+ua      = -6.6140183e-010  lua     = -1.482599e-016  wua     = -1.9081815e-016  pua     = 2.6077246e-022
+ub      = 2.3119423e-018  lub     = 2.8433446e-025  wub     = -1.9970487e-025  pub     = -2.4984188e-031
+uc      = 9.2538985e-011  luc     = 5.5713301e-017  wuc     = -9.0030304e-018  puc     = -2.7586707e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 343.8965        a0      = 0.52862463    
+la0     = -9.3258497e-008  wa0     = 4.9823418e-009  pa0     = 2.4984188e-014  ags     = 0.042788712   
+lags    = 1.4840216e-007  wags    = -3.4494794e-008  pags    = 9.7126029e-014  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 80000         
+keta    = 0.015560374     lketa   = -3.7292084e-008  wketa   = -4.130256e-010  pketa   = -6.9400521e-015
+dwg     = 0               dwb     = 0               alpha0  = 0               beta0   = 20.983771     
+lbeta0  = -6.7208845e-007  wbeta0  = -4.502785e-007  pbeta0  = 8.8485664e-013  pclm    = 0.42543431    
+lpclm   = 3.0992827e-007  wpclm   = 1.16251e-007    ppclm   = -8.3454127e-014  pdiblc1 = 0.00016806956 
+lpdiblc1= 1.6116156e-010  wpdiblc1= -7.5638947e-011  ppdiblc1= 8.0157602e-017  pdiblc2 = 1e-005        
+pdiblcb = 0               drout   = 0               pvag    = 0               pscbe1  = 2e+008        
+pscbe2  = 3.9040568e-007  lpscbe2 = -4.0191532e-013  delta   = 0.01            eta0    = 0.0001        
+etab    = 3.3036596e-006  letab   = -1.323315e-010  wetab   = -1.5698318e-011  petab   = 1.5615117e-016
+dsub    = 0               elm     = 5               alpha1  = 5.9547358       lalpha1 = -1.0843758e-006
+walpha1 = -7.3177461e-007  palpha1 = 1.6482624e-012  vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 0.7               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.31305571     lkt1    = 2.3999707e-008  wkt1    = -7.0631483e-009  pkt1    = 5.0315378e-015
+kt1l    = 0               kt2     = -0.028345465    lkt2    = 5.3658347e-009  wkt2    = -1.2822666e-009
+pkt2    = 1.4400608e-015  ute     = -1.3904061      lute    = 3.3843981e-007  wute    = 2.28179e-007  
+pute    = -2.4637185e-013  ua1     = 2.2370589e-009  lua1    = 2.7024385e-016  wua1    = 1.8142134e-016
+pua1    = 5.8990443e-023  ub1     = -2.4880505e-018  lub1    = -3.1599266e-026  wub1    = -1.6572302e-025
+pub1    = -2.1514162e-031  uc1     = -4.0074463e-011  luc1    = -5.1714479e-018  wuc1    = -6.3636384e-017
+puc1    = 5.3681303e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.13e+019          noib    = 7.24e4           noic    = -6.6e-012     
+em      = 42000000        ef      = 0.87             
+rsh     = 6.5             js      = 3.65e-7          jsw     = 4.0e-13               cj      = cjn3        
+mj      = 0.3097            cjsw    = cjswn3          mjsw    = 0.1211            pb      = 0.6384             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 5.0e-4               tcjswg  = 5.0e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgn3	   mjswg   = 0.1211     pbswg   = 0.6      tlev=1     tlevc = 1 
***********************************************************************
*                        3.3V nominal PMOS                            *
***********************************************************************

.model  pch3.0  pmos  level = 49
+lmin    = 3e-007          lmax    = '5e-007-dxl3'          wmin    = 2.2e-007        wmax    = '5e-007-dxw3'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 3e-007          wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0154       lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp3      
+toxm    = toxp3        wint    = 2e-008          lint    = -1e-008    dlc = 4e-8                 
+dwc	 = 2e-8               hdif    = hdifp3          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop3        cgdo    = cgop3      
+xpart   = 0             
+vth0    = '-0.67678643+dvthp3'     lvth0   = -6.3371379e-009  wvth0   = -4.2922929e-009  pvth0   = 6.6740068e-015
+k1      = 1.1933386       lk1     = -5.3587727e-008  wk1     = -1.3514143e-008  pk1     = 4.6027633e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.26e+017       voff    = -0.0474754    
+lvoff   = -1.8891341e-008  wvoff   = -2.137689e-009  pvoff   = 1.5051036e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.0068776539    lu0     = 6.5967382e-010  wu0     = -2.3065271e-010  pu0     = 4.7661614e-016
+ua      = 2.5951136e-011  lua     = -1.849666e-017  wua     = -5.5365994e-018  pua     = -2.7432469e-024
+ub      = 7.6777239e-019  lub     = -4.9813239e-026  wub     = -9.9038411e-026  pub     = 2.4739853e-032
+uc      = -1.8915343e-010  luc     = 6.0747581e-017  wuc     = 7.7509671e-018  puc     = -1.7168307e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 1000            a0      = 1.4673632     
+la0     = -1.6293115e-007  wa0     = -1.7537188e-007  pa0     = 1.350911e-013   ags     = -0.13519871   
+lags    = 2.6600414e-007  wags    = 5.4266529e-008  pags    = -2.8997409e-014  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 57837.518     
+lvsat   = 0.012943882     wvsat   = -0.0015367532   pvsat   = 4.7178324e-010  keta    = 0.028462188   
+lketa   = -1.6537117e-008  wketa   = -5.05031e-009   pketa   = 3.4773416e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 15.064011       lbeta0  = 4.0641066e-006
+wbeta0  = 1.3619861e-006  pbeta0  = -3.3370034e-013  pclm    = 1.5342446       lpclm   = -4.7528534e-008
+wpclm   = -3.7883514e-007  ppclm   = 2.6028626e-013  pdiblc1 = -0.00086672782  lpdiblc1= 5.097338e-010 
+wpdiblc1= -5.8676072e-011  ppdiblc1= 4.715531e-017   pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 2e-008        
+delta   = 0.01            eta0    = 0.0001          etab    = 0.0011191131    letab   = -5.7246035e-010
+wetab   = 5.2337141e-011  petab   = -2.653493e-017  dsub    = 0               elm     = 5             
+alpha1  = -7.5305743      lalpha1 = 4.1215855e-006  walpha1 = 1.1168153e-006  palpha1 = -2.6742055e-013
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6               cf      = 0               ckappa  = 0.6           
+cgdl    = 0              cgsl    = 0              vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1             lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0           lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.26742704     lkt1    = -3.6077215e-009  wkt1    = -1.8963714e-008  pkt1    = 5.7764679e-015
+kt1l    = 0               kt2     = -0.012463736    lkt2    = -4.7928774e-009  wkt2    = 6.2223904e-009
+pkt2    = -1.9193523e-015  ute     = -0.040735536    lute    = -2.068742e-007  wute    = -1.2991157e-007
+pute    = 3.3300992e-014  ua1     = 2.3790546e-009  lua1    = -4.3242628e-016  wua1    = -2.6413644e-016
+pua1    = 1.0333204e-022  ub1     = -1.8459325e-018  lub1    = 5.964692e-026   wub1    = 6.536025e-026 
+pub1    = -3.4520725e-033  uc1     = 3.1852243e-010  luc1    = -1.0132917e-016  wuc1    = -1.2722905e-016
+puc1    = 4.6278483e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.01e+020          noib    = 9.28e+3           noic    = 1.1e-011     
+em      = 42000000        ef      = 1.08                 
+rsh     = 0               js      = 1.86e-7          jsw     = 9.5e-13               cj      = cjp3        
+mj      = 0.3757             cjsw    = cjswp3          mjsw    = 0.1672            pb      = 0.7405             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 6.5e-4               tcjswg  = 6.5e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgp3	   mjswg   = 0.1672     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch3.1  pmos  level = 49
+lmin    = '5e-007-dxl3'          lmax    = '1.2e-006-dxl3'        wmin    = 2.2e-007        wmax    = '5e-007-dxw3'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 5e-007          wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0154         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp3      
+toxm    = toxp3        wint    = 2e-008          lint    = -1e-008    dlc = 4e-8                 
+dwc	 = 2e-8             hdif    = hdifp3          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop3        cgdo    = cgop3      
+xpart   = 0             
+vth0    = '-0.67598408+dvthp3'     lvth0   = -6.7439278e-009  wvth0   = 2.7526776e-009  pvth0   = 3.1022068e-015
+k1      = 1.1387556       lk1     = -2.5914167e-008  wk1     = -1.2084153e-008  pk1     = 3.8777585e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.26e+017       voff    = -0.094256949  
+lvoff   = 4.8269038e-009  wvoff   = -2.1978246e-009  pvoff   = 1.5355923e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.0080185503    lu0     = 8.1239352e-011  wu0     = 1.8269609e-010  pu0     = 2.670483e-016 
+ua      = 4.4713329e-010  lua     = -2.3203601e-016  wua     = -7.3364212e-017  pua     = 3.1645353e-023
+ub      = 3.1032808e-019  lub     = 1.8211103e-025  wub     = 3.4400865e-026  pub     = -4.291386e-032
+uc      = -6.1921286e-011  luc     = -3.7591153e-018  wuc     = -3.4677823e-017  puc     = 4.3430895e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 1000            a0      = 0.80446827    
+la0     = 1.7315659e-007  wa0     = -2.4666373e-008  pa0     = 5.8683411e-014  ags     = 0.042045347   
+lags    = 1.761414e-007   wags    = -3.7600494e-008  pags    = 1.7579172e-014  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 77560.709     
+lvsat   = 0.002944224     wvsat   = 0.00043907235   pvsat   = -5.2996032e-010  keta    = 0.010672053   
+lketa   = -7.5175187e-009  wketa   = 1.4482635e-009  pketa   = 1.8256487e-016  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 16.932921       lbeta0  = 3.1165688e-006
+wbeta0  = -1.8851786e-007  pbeta0  = 4.5240515e-013  pclm    = 0.88281673      lpclm   = 2.8274542e-007
+wpclm   = -5.3091698e-008  ppclm   = 9.5134341e-014  pdiblc1 = -0.00015396547  lpdiblc1= 1.4836329e-010
+wpdiblc1= 7.6903668e-012  ppdiblc1= 1.3507525e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 3.7242857e-008
+lpscbe2 = -8.7421286e-015  delta   = 0.01            eta0    = 0.0001          etab    = -1e-005       
+dsub    = 0               elm     = 5               alpha1  = 0.27550678      lalpha1 = 1.6390242e-007
+walpha1 = -3.7689419e-007  palpha1 = 4.8989015e-013  vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6               cf      = 0               ckappa  = 0.6           
+cgdl    = 0          cgsl    = 0          vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1             lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0           lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.35297322     lkt1    = 3.9764196e-008  wkt1    = 1.7006698e-008  pkt1    = -1.2460531e-014
+kt1l    = 0               kt2     = -0.034134939    lkt2    = 6.1944225e-009  wkt2    = 3.028165e-009 
+pkt2    = -2.9987999e-016  ute     = -0.44843889     lute    = -1.6859819e-010  wute    = -4.4394192e-008
+pute    = -1.005632e-014  ua1     = 2.4647701e-009  lua1    = -4.7588401e-016  wua1    = -2.1686376e-016
+pua1    = 7.936479e-023   ub1     = -3.1633841e-018  lub1    = 7.2759487e-025  wub1    = 3.2369731e-025
+pub1    = -1.3442896e-031  uc1     = -3.2868086e-011  luc1    = 7.6825826e-017  wuc1    = 3.0295692e-017
+puc1    = -3.3586559e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.01e+020          noib    = 9.28e+3           noic    = 1.1e-011     
+em      = 42000000        ef      = 1.08             
+rsh     = 0               js      = 1.86e-7          jsw     = 9.5e-13               cj      = cjp3        
+mj      = 0.3757             cjsw    = cjswp3          mjsw    = 0.1672            pb      = 0.7405             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 6.5e-4               tcjswg  = 6.5e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgp3	   mjswg   = 0.1672     pbswg   = 0.6      tlev=1     tlevc = 1             
.model  pch3.2  pmos  level = 49
+lmin    = '1.2e-006-dxl3'        lmax    = 2.0001e-005     wmin    = 2.2e-007        wmax    = '5e-007-dxw3'        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 1.2e-006        wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0154         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp3      
+toxm    = toxp3        wint    = 2e-008          lint    = -1e-008    dlc = 4e-8                 
+dwc	 = 2e-8            hdif    = hdifp3          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop3        cgdo    = cgop3      
+xpart   = 0             
+vth0    = '-0.68067795+dvthp3'     lvth0   = -1.0784329e-009  wvth0   = 6.5334442e-009  pvth0   = -1.4611786e-015
+k1      = 1.1070513       lk1     = 1.2352959e-008  wk1     = -4.1635899e-009  pk1     = -5.6823612e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.26e+017       voff    = -0.088950936  
+lvoff   = -1.5774533e-009  wvoff   = -2.3480255e-009  pvoff   = 1.7168849e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.0076497566    lu0     = 5.2637332e-010  wu0     = 5.6636615e-010  pu0     = -1.9604146e-016
+ua      = 1.7331814e-010  lua     = 9.8458869e-017  wua     = -3.554465e-018  pua     = -5.2615012e-023
+ub      = 4.4984367e-019  lub     = 1.3715706e-026  wub     = -6.7018098e-027  pub     = 6.6970686e-033
+uc      = -9.7826509e-011  luc     = 3.9578489e-017  wuc     = -1.7460467e-017  puc     = -1.6438259e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 1000            a0      = 0.78727236    
+la0     = 1.9391205e-007  wa0     = 5.06194e-008    pa0     = -3.2186518e-014  ags     = 0.030481225   
+lags    = 1.900993e-007   wags    = 3.1764301e-009  pags    = -3.1638576e-014  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 80000         
+keta    = 0.030682676     lketa   = -3.167034e-008  wketa   = -1.9444751e-009  pketa   = 4.2776004e-015
+dwg     = 0               dwb     = 0               alpha0  = 0               beta0   = 15.286393     
+lbeta0  = 5.103929e-006   wbeta0  = 4.8894677e-007  pbeta0  = -3.6529465e-013  pclm    = 0.32648594    
+lpclm   = 9.5423669e-007  wpclm   = -5.6949867e-010  ppclm   = 3.1740046e-014  pdiblc1 = 2.6833346e-006
+lpdiblc1= -4.0711824e-011  wpdiblc1= 3.3656661e-012  ppdiblc1= 1.8727439e-017  pdiblc2 = 1e-005        
+pdiblcb = 0               drout   = 0               pvag    = 0               pscbe1  = 2e+008        
+pscbe2  = 3.3703295e-007  lpscbe2 = -3.7058878e-013  delta   = 0.01            eta0    = 0.0001        
+etab    = -1e-005         dsub    = 0               elm     = 5               alpha1  = 0.056676937   
+lalpha1 = 4.2803004e-007  walpha1 = 3.8160285e-008  palpha1 = -1.1080604e-014  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6               cf      = 0               ckappa  = 0.6           
+cgdl    = 0              cgsl    = 0              vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1             lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0           lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.29612386     lkt1    = -2.8852983e-008  wkt1    = -4.3130231e-009  pkt1    = 1.3272372e-014
+kt1l    = 0               kt2     = -0.0246053      lkt2    = -5.3078509e-009  wkt2    = -1.7949857e-010
+pkt2    = 3.5717699e-015  ute     = -0.55201944     lute    = 1.2485312e-007  wute    = -4.5159688e-008
+pute    = -9.1323663e-015  ua1     = 1.4892493e-009  lua1    = 7.0156965e-016  wua1    = 3.0478062e-017
+pua1    = -2.1917679e-022  ub1     = -1.6500319e-018  lub1    = -1.0990212e-024  wub1    = -6.0059235e-026
+pub1    = 3.2876519e-031  uc1     = 7.0338953e-011  luc1    = -4.774507e-017  wuc1    = -1.1913569e-017
+puc1    = 1.7360019e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.01e+020          noib    = 9.28e+3           noic    = 1.1e-011     
+em      = 42000000        ef      = 1.08             
+rsh     = 0               js      = 1.86e-7          jsw     = 9.5e-13               cj      = cjp3        
+mj      = 0.3757             cjsw    = cjswp3          mjsw    = 0.1672            pb      = 0.7405             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 6.5e-4               tcjswg  = 6.5e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgp3	   mjswg   = 0.1672     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch3.3  pmos  level = 49
+lmin    = '1.2e-006-dxl3'        lmax    = 2.0001e-005     wmin    = '5e-007-dxw3'          wmax    = '1.2e-006-dxw3'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 1.2e-006        wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0154         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp3      
+toxm    = toxp3        wint    = 2e-008          lint    = -1e-008    dlc = 4e-8                 
+dwc	 = 2e-8            hdif    = hdifp3          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop3        cgdo    = cgop3      
+xpart   = 0             
+vth0    = '-0.68355289+dvthp3'     lvth0   = -8.4313849e-010  wvth0   = 7.8559173e-009  pvth0   = -1.5694141e-015
+k1      = 1.098748        lk1     = 9.0980525e-009  wk1     = -3.4406805e-010  pk1     = -4.1851041e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.26e+017       voff    = -0.10172339   
+lvoff   = 2.035101e-008   wvoff   = 3.5273039e-009  pvoff   = -8.3702083e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.012490891     lu0     = -8.8466796e-010  wu0     = -1.6605555e-009  pu0     = 4.5303752e-016
+ua      = 1.1568138e-009  lua     = -4.6627519e-017  wua     = -4.5596246e-016  pua     = 1.4124726e-023
+ub      = 9.0578203e-019  lub     = 1.6219632e-026  wub     = -2.1643345e-025  pub     = 5.545263e-033 
+uc      = -8.7934183e-011  luc     = 2.7475334e-017  wuc     = -2.2010937e-017  puc     = -1.0870808e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 1000            a0      = 0.78829915    
+la0     = -3.5502013e-008  wa0     = 5.0147078e-008  pa0     = 7.334395e-014   ags     = 0.040328733   
+lags    = 4.1962022e-008  wags    = -1.3534236e-009  pags    = 3.6504571e-014  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 75454.156     
+lvsat   = 0.045490262     wvsat   = 0.0020910883    pvsat   = -2.0925521e-008  keta    = 0.019894921   
+lketa   = -6.6338528e-009  wketa   = 3.017892e-009   pketa   = -7.2391839e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 17.148101       lbeta0  = 1.1254918e-006
+wbeta0  = -3.6743904e-007  pbeta0  = 1.4647865e-012  pclm    = 0.39588169      lpclm   = 5.6514984e-007
+wpclm   = -3.2491545e-008  ppclm   = 2.1071999e-013  pdiblc1 = -6.3727532e-007  lpdiblc1= 1.0644721e-010
+wpdiblc1= 4.8931466e-012  ppdiblc1= -4.8965719e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 3.3703295e-007
+lpscbe2 = -3.7058878e-013  delta   = 0.01            eta0    = 0.0001          etab    = -1e-005       
+dsub    = 0               elm     = 5               alpha1  = 0.20423465      lalpha1 = 4.934517e-008 
+walpha1 = -2.9716262e-008  palpha1 = 1.6311443e-013  vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6               cf      = 0               ckappa  = 0.6           
+cgdl    = 0              cgsl    = 0              vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1             lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0           lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.30708316     lkt1    = -1.0690212e-008  wkt1    = 7.2825139e-010  pkt1    = 4.9174974e-015
+kt1l    = 0               kt2     = -0.022085263    lkt2    = 3.6431426e-010  wkt2    = -1.3387158e-009
+pkt2    = 9.6257395e-016  ute     = -0.82096358     lute    = -1.3791785e-007  wute    = 7.8554617e-008
+pute    = 1.1174228e-013  ua1     = 1.397674e-009   lua1    = -8.9851112e-016  wua1    = 7.260269e-017 
+pua1    = 5.1686036e-022  ub1     = -1.9563942e-018  lub1    = 3.7992212e-025  wub1    = 8.0867426e-026
+pub1    = -3.5154875e-031  uc1     = 4.45451e-011    luc1    = 2.1609835e-017  wuc1    = -4.8396481e-020
+puc1    = -1.4543237e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.01e+020          noib    = 9.28e+3           noic    = 1.1e-011     
+em      = 42000000        ef      = 1.08             
+rsh     = 0               js      = 1.86e-7          jsw     = 9.5e-13               cj      = cjp3        
+mj      = 0.3757             cjsw    = cjswp3          mjsw    = 0.1672            pb      = 0.7405             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 6.5e-4               tcjswg  = 6.5e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgp3	   mjswg   = 0.1672     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch3.4  pmos  level = 49
+lmin    = '5e-007-dxl3'          lmax    = '1.2e-006-dxl3'        wmin    = '5e-007-dxw3'          wmax    = '1.2e-006-dxw3'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 5e-007          wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0154         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp3      
+toxm    = toxp3        wint    = 2e-008          lint    = -1e-008    dlc = 4e-8                 
+dwc	 = 2e-8           hdif    = hdifp3          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop3        cgdo    = cgop3      
+xpart   = 0             
+vth0    = '-0.68617182+dvthp3'     lvth0   = 2.3179129e-009  wvth0   = 7.4390374e-009  pvth0   = -1.06624e-015 
+k1      = 1.1195712       lk1     = -1.6035562e-008  wk1     = -3.2593159e-009  pk1     = -6.6639997e-016
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.26e+017       voff    = -0.064693904  
+lvoff   = -2.4343581e-008  wvoff   = -1.5796825e-008  pvoff   = 1.4954015e-014  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.012574337     lu0     = -9.8538776e-010  wu0     = -1.9129658e-009  pu0     = 7.5769677e-016
+ua      = 1.6990437e-009  lua     = -7.0109898e-016  wua     = -6.4924298e-016  pua     = 2.4741432e-022
+ub      = 7.1216534e-019  lub     = 2.4991498e-025  wub     = -1.5044427e-025  pub     = -7.4103677e-032
+uc      = -1.0717032e-010  luc     = 5.0693356e-017  wuc     = -1.3863266e-017  puc     = -2.0705047e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 1000            a0      = 0.65916192    
+la0     = 1.2036662e-007  wa0     = 4.2174546e-008  pa0     = 8.2966797e-014  ags     = 0.034327347   
+lags    = 4.9205695e-008  wags    = -3.4050214e-008  pags    = 7.5969597e-014  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 114118.57     
+lvsat   = -0.0011776896   wvsat   = -0.016377545    pvsat   = 1.3661199e-009  keta    = 0.026336415   
+lketa   = -1.4408736e-008  wketa   = -5.7573432e-009  pketa   = 3.352525e-015   dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 15.811902       lbeta0  = 2.7382844e-006
+wbeta0  = 3.2715125e-007  pbeta0  = 6.2641597e-013  pclm    = 0.54564635      lpclm   = 3.843839e-007 
+wpclm   = 1.0200668e-007  ppclm   = 4.8380638e-014  pdiblc1 = -0.00011622453  lpdiblc1= 2.4596104e-010
+wpdiblc1= -9.6704655e-012  ppdiblc1= -3.1387439e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 3.7242857e-008
+lpscbe2 = -8.7421286e-015  delta   = 0.01            eta0    = 0.0001          etab    = -1e-005       
+dsub    = 0               elm     = 5               alpha1  = 0.10880864      lalpha1 = 1.6452436e-007
+walpha1 = -3.0021305e-007  palpha1 = 4.8960406e-013  vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6               cf      = 0               ckappa  = 0.6           
+cgdl    = 0              cgsl    = 0              vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1             lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0           lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.32656217     lkt1    = 1.2820956e-008  wkt1    = 4.8576113e-009  pkt1    = -6.6639997e-017
+kt1l    = 0               kt2     = -0.015981279    lkt2    = -7.0031943e-009  wkt2    = -5.3225184e-009
+pkt2    = 5.7710238e-015  ute     = -1.1186177      lute    = 2.213507e-007   wute    = 2.6388807e-007
+pute    = -1.119552e-013  ua1     = 5.0490273e-010  lua1    = 1.7906377e-016  wua1    = 6.8467523e-016
+pua1    = -2.2191119e-022  ub1     = -2.0479322e-018  lub1    = 4.9040844e-025  wub1    = -1.8941058e-025
+pub1    = -2.5323199e-032  uc1     = 7.4906158e-011  luc1    = -1.5035962e-017  wuc1    = -1.928046e-017
+puc1    = 8.6698636e-024  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.01e+020          noib    = 9.28e+3           noic    = 1.1e-011     
+em      = 42000000        ef      = 1.08             
+rsh     = 0               js      = 1.86e-7          jsw     = 9.5e-13               cj      = cjp3        
+mj      = 0.3757             cjsw    = cjswp3          mjsw    = 0.1672            pb      = 0.7405             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 6.5e-4               tcjswg  = 6.5e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgp3	   mjswg   = 0.1672     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch3.5  pmos  level = 49
+lmin    = 3e-007          lmax    = '5e-007-dxl3'          wmin    = '5e-007-dxw3'          wmax    = '1.2e-006-dxw3'      
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 3e-007          wref    = 5e-007        
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0154         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp3      
+toxm    = toxp3        wint    = 2e-008          lint    = -1e-008    dlc = 4e-8                 
+dwc	 = 2e-8           hdif    = hdifp3          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop3        cgdo    = cgop3      
+xpart   = 0             
+vth0    = '-0.7511355+dvthp3'      lvth0   = 3.5254499e-008  wvth0   = 2.990828e-008   pvth0   = -1.2458146e-014
+k1      = 1.1255723       lk1     = -1.907812e-008  wk1     = 1.7658349e-008  pk1     = -1.1271656e-014
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.26e+017       voff    = -0.1991412    
+lvoff   = 4.3821197e-008  wvoff   = 6.7628578e-008  pvoff   = -2.7342664e-014  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.0085044456    lu0     = 1.0780472e-009  wu0     = -9.7897686e-010  pu0     = 2.8416438e-016
+ua      = 1.7741006e-009  lua     = -7.3915286e-016  wua     = -8.0968536e-016  pua     = 3.2875861e-022
+ub      = -8.4660864e-019  lub     = 1.0402134e-024  wub     = 6.4357687e-025  pub     = -4.7667239e-031
+uc      = -1.9911632e-010  luc     = 9.7309976e-017  wuc     = 1.2333897e-017  puc     = -3.3987009e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 1000            a0      = 0.83201371    
+la0     = 3.2730761e-008  wa0     = 1.1688889e-007  pa0     = 4.5086623e-014  ags     = -0.1193776    
+lags    = 1.271341e-007   wags    = 4.6988816e-008  pags    = 3.4882809e-014  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 102175.65     
+lvsat   = 0.0048773726    wvsat   = -0.021932294    pvsat   = 4.1823776e-009  keta    = -0.0023669123 
+lketa   = 1.4385081e-010  wketa   = 9.131076e-009   pketa   = -4.1959036e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 15.797816       lbeta0  = 2.745426e-006 
+wbeta0  = 1.0244358e-006  pbeta0  = 2.7289272e-013  pclm    = 0.77242686      lpclm   = 2.6940618e-007
+wpclm   = -2.8398954e-008  ppclm   = 1.1449629e-013  pdiblc1 = -0.00059982401  lpdiblc1= 4.9114597e-010
+wpdiblc1= -1.8145182e-010  ppdiblc1= 5.570571e-017   pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4.5437143e-008
+lpscbe2 = -1.2896631e-014  wpscbe2 = -1.1701086e-014  ppscbe2 = 5.9324505e-021  delta   = 0.01          
+eta0    = 0.0001          etab    = 0.0010451634    letab   = -5.3496784e-010  wetab   = 8.6354013e-011
+petab   = -4.3781484e-017  dsub    = 0               elm     = 5               alpha1  = -0.047667     
+lalpha1 = 2.4385751e-007  walpha1 = -2.3253221e-006  palpha1 = 1.5163343e-012  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6               cf      = 0               ckappa  = 0.6           
+cgdl    = 0              cgsl    = 0              vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1             lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0           lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.36191556     lkt1    = 3.0745125e-008  wkt1    = 2.4501006e-008  pkt1    = -1.0025841e-014
+kt1l    = 0               kt2     = -0.053446443    lkt2    = 1.1991644e-008  wkt2    = 2.5074436e-008
+pkt2    = -9.640232e-015  ute     = -1.0522004      lute    = 1.8767712e-007  wute    = 3.3536226e-007
+pute    = -1.4819261e-013  ua1     = 4.9491571e-011  lua1    = 4.0995723e-016  wua1    = 8.0746258e-016
+pua1    = -2.8416438e-022  ub1     = -7.30721e-019   lub1    = -1.7741762e-025  wub1    = -4.4763704e-025
+pub1    = 1.0559762e-031  uc1     = 1.2779603e-010  luc1    = -4.1851125e-017  wuc1    = -3.9494899e-017
+puc1    = 1.8918585e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.01e+020          noib    = 9.28e+3           noic    = 1.1e-011     
+em      = 42000000        ef      = 1.08             
+rsh     = 0               js      = 1.86e-7          jsw     = 9.5e-13               cj      = cjp3        
+mj      = 0.3757             cjsw    = cjswp3          mjsw    = 0.1672            pb      = 0.7405             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 6.5e-4               tcjswg  = 6.5e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgp3	   mjswg   = 0.1672     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch3.6  pmos  level = 49
+lmin    = 3e-007          lmax    = '5e-007-dxl3'          wmin    = '1.2e-006-dxw3'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 3e-007          wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0154         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp3      
+toxm    = toxp3        wint    = 2e-008          lint    = -1e-008    dlc = 4e-8                 
+dwc	 = 2e-8            hdif    = hdifp3          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop3        cgdo    = cgop3      
+xpart   = 0             
+vth0    = '-0.80135975+dvthp3'     lvth0   = 5.3582168e-008  wvth0   = 8.816841e-008   pvth0   = -3.3718243e-014
+k1      = 1.2079458       lk1     = -6.2266675e-008  wk1     = -7.7894896e-008  pk1     = 3.8827068e-014
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.26e+017       voff    = -0.12866013   
+lvoff   = 1.7810031e-008  wvoff   = -1.4129462e-008  pvoff   = 2.8302889e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.0077857357    lu0     = 1.6841576e-009  wu0     = -1.4527339e-010  pu0     = -4.1892362e-016
+ua      = 4.5232355e-010  lua     = -1.4872633e-016  wua     = 7.2357604e-016  pua     = -3.5613617e-022
+ub      = 8.2777204e-019  lub     = 2.0948445e-025  wub     = -1.2987047e-024  pub     = 4.8697317e-031
+uc      = -6.6711671e-011  luc     = 2.9765112e-017  wuc     = -1.412555e-016  puc     = 4.4365033e-023
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 1000            a0      = 0.52095664    
+la0     = 2.4424158e-007  wa0     = 4.777151e-007   pa0     = -2.0026593e-013  ags     = -0.4102907    
+lags    = 3.200713e-007   wags    = 3.8444801e-007  pags    = -1.8892434e-013  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 102205.52     
+lvsat   = -0.0011181966   wvsat   = -0.021966938    pvsat   = 1.1137238e-008  keta    = -0.0023984022 
+lketa   = -2.132745e-011  wketa   = 9.1676044e-009  pketa   = -4.0042968e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 13.56845        lbeta0  = 4.742342e-006 
+wbeta0  = 3.6105e-006     pbeta0  = -2.0435299e-012  pclm    = 0.36812945      lpclm   = 5.3370627e-007
+wpclm   = 4.4058603e-007  ppclm   = -1.9209181e-013  pdiblc1 = -0.0032421819   lpdiblc1= 1.7762965e-009
+wpdiblc1= 2.8836834e-009  ppdiblc1= -1.4350689e-015  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 3.535e-008    
+lpscbe2 = -7.78245e-015   delta   = 0.01            eta0    = 0.0001          etab    = 0.0015362209  
+letab   = -7.8393397e-010  wetab   = -4.8327265e-010  petab   = 2.4501923e-016  dsub    = 0             
+elm     = 5               alpha1  = -7.0268506      lalpha1 = 4.1362837e-006  walpha1 = 5.7705309e-006
+palpha1 = -2.9988801e-012  vfb     = -1              lvfb    = 0               wvfb    = 0             
+pvfb    = 0             
+clc     = 1e-007          cle     = 0.6               cf      = 0               ckappa  = 0.6           
+cgdl    = 0              cgsl    = 0              vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1             lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0           lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.36762715     lkt1    = 2.9853478e-008  wkt1    = 3.1126449e-008  pkt1    = -8.9915314e-015
+kt1l    = 0               kt2     = -0.028751043    lkt2    = 2.5272091e-009  wkt2    = -3.5722287e-009
+pkt2    = 1.3385121e-015  ute     = -0.92213526     lute    = 5.1556963e-008  wute    = 1.844867e-007 
+pute    = 9.7067669e-015  ua1     = 4.9370518e-010  lua1    = 3.7991091e-016  wua1    = 2.9217479e-016
+pua1    = -2.4931064e-022  ub1     = -9.1913536e-019  lub1    = -3.7529804e-025  wub1    = -2.2907638e-025
+pub1    = 3.351389e-031   uc1     = -3.8078349e-011  luc1    = 1.131447e-017   wuc1    = 1.5291938e-016
+puc1    = -4.2753506e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.01e+020          noib    = 9.28e+3           noic    = 1.1e-011     
+em      = 42000000        ef      = 1.08             
+rsh     = 0               js      = 1.86e-7          jsw     = 9.5e-13               cj      = cjp3        
+mj      = 0.3757             cjsw    = cjswp3          mjsw    = 0.1672            pb      = 0.7405             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 6.5e-4               tcjswg  = 6.5e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgp3	   mjswg   = 0.1672     pbswg   = 0.6      tlev=1     tlevc = 1             
.model  pch3.7  pmos  level = 49
+lmin    = '5e-007-dxl3'          lmax    = '1.2e-006-dxl3'        wmin    = '1.2e-006-dxw3'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 5e-007          wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0154         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp3      
+toxm    = toxp3        wint    = 2e-008          lint    = -1e-008    dlc = 4e-8                 
+dwc	 = 2e-8           hdif    = hdifp3          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop3        cgdo    = cgop3      
+xpart   = 0             
+vth0    = '-0.69979996+dvthp3'     lvth0   = 2.0913556e-009  wvth0   = 2.3247681e-008  pvth0   = -8.0343341e-016
+k1      = 1.1061838       lk1     = -1.0673344e-008  wk1     = 1.2270073e-008  pk1     = -6.886572e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.26e+017       voff    = -0.12053332   
+lvoff   = 1.3689736e-008  wvoff   = 4.8976892e-008  pvoff   = -2.9164633e-014  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.011704227     lu0     = -3.0251739e-010  wu0     = -9.0363782e-010  pu0     = -3.443286e-017
+ua      = 1.1238614e-009  lua     = -4.89196e-016   wua     = 1.7968474e-017  pua     = 1.6068668e-024
+ub      = 9.1657276e-019  lub     = 1.6446249e-025  wub     = -3.8755688e-025  pub     = 2.5021212e-032
+uc      = -6.4041709e-011  luc     = 2.8411441e-017  wuc     = -6.3892458e-017  puc     = 5.1419738e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 1000            a0      = 0.73506437    
+la0     = 1.3568896e-007  wa0     = -4.5872293e-008  pa0     = 6.5192882e-014  ags     = 0.047479955   
+lags    = 8.7981577e-008  wags    = -4.9307239e-008  pags    = 3.0989574e-014  a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 60968.442     
+lvsat   = 0.019789        wvsat   = 0.045276608     pvsat   = -2.295524e-008  keta    = 0.02025335    
+lketa   = -1.1505766e-008  wketa   = 1.2990129e-009  pketa   = -1.4920906e-017  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 17.685604       lbeta0  = 2.6549447e-006
+wbeta0  = -1.8463441e-006  pbeta0  = 7.2309006e-013  pclm    = 0.76461664      lpclm   = 3.3268727e-007
+wpclm   = -1.5199886e-007  ppclm   = 1.0834873e-013  pdiblc1 = -0.00011146213  lpdiblc1= 1.8902151e-010
+wpdiblc1= -1.519486e-011  ppdiblc1= 3.4662413e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 3.7242857e-008
+lpscbe2 = -8.7421286e-015  delta   = 0.01            eta0    = 0.0001          etab    = -1e-005       
+dsub    = 0               elm     = 5               alpha1  = -0.035253604    lalpha1 = 5.9154408e-007
+walpha1 = -1.3310085e-007  palpha1 = -5.73881e-015   vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6               cf      = 0               ckappa  = 0.6           
+cgdl    = 0              cgsl    = 0              vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1             lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0           lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.30035198     lkt1    = -4.2550324e-009  wkt1    = -2.554621e-008  pkt1    = 1.9741507e-014
+kt1l    = 0               kt2     = -0.020780887    lkt2    = -1.5136598e-009  wkt2    = 2.4502635e-010
+pkt2    = -5.9683624e-016  ute     = -0.74290622     lute    = -3.931216e-008  wute    = -1.7193726e-007
+pute    = 1.9041372e-013  ua1     = 1.1500817e-009  lua1    = 4.712802e-017   wua1    = -6.3732358e-017
+pua1    = -6.886572e-023  ub1     = -1.4262996e-018  lub1    = -1.1816576e-025  wub1    = -9.1050433e-025
+pub1    = 6.8062287e-031  uc1     = 1.1375964e-010  luc1    = -6.5667393e-017  wuc1    = -6.4350504e-017
+puc1    = 6.7402324e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.01e+020          noib    = 9.28e+3           noic    = 1.1e-011     
+em      = 42000000        ef      = 1.08             
+rsh     = 0               js      = 1.86e-7          jsw     = 9.5e-13               cj      = cjp3        
+mj      = 0.3757             cjsw    = cjswp3          mjsw    = 0.1672            pb      = 0.7405             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 6.5e-4               tcjswg  = 6.5e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgp3	   mjswg   = 0.1672     pbswg   = 0.6      tlev=1     tlevc = 1              
.model  pch3.8  pmos  level = 49
+lmin    = '1.2e-006-dxl3'        lmax    = 2.0001e-005     wmin    = '1.2e-006-dxw3'        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 1.2e-006        wref    = 1.2e-006      
+tref    = 25              xl      = '-1.3e-008+dxl3'       xw      = '0+dxw3'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0154         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxp3      
+toxm    = toxp3        wint    = 2e-008          lint    = -1e-008    dlc = 4e-8                 
+dwc	 = 2e-8           hdif    = hdifp3          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgop3        cgdo    = cgop3      
+xpart   = 0             
+vth0    = '-0.67153632+dvthp3'     lvth0   = -3.2022863e-008  wvth0   = -6.0833046e-009  pvth0   = 3.4599067e-014
+k1      = 1.1120981       lk1     = -1.7811969e-008  wk1     = -1.5830252e-008  pk1     = 2.7030521e-014
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.26e+017       voff    = -0.084332394  
+lvoff   = -3.0004776e-008  wvoff   = -1.6646254e-008  pvoff   = 5.0042504e-014  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.011064993     lu0     = 4.6903812e-010  wu0     = -6.5138194e-012  pu0     = -1.1172615e-015
+ua      = 7.2638334e-010  lua     = -9.4400316e-018  wua     = 4.3336846e-017  pua     = -2.9012759e-023
+ub      = 8.7956882e-019  lub     = 2.0912624e-025  wub     = -1.8602613e-025  pub     = -2.182264e-031
+uc      = -5.4395077e-011  luc     = 1.6767957e-017  wuc     = -6.0916299e-017  puc     = 1.5497499e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 1000            a0      = 0.89182521    
+la0     = -5.3521379e-008  wa0     = -6.9943158e-008  pa0     = 9.4246416e-014  ags     = 0.069187646   
+lags    = 6.1780393e-008  wags    = -3.4829762e-008  pags    = 1.351526e-014   a1      = 0             
+a2      = 0.4             b0      = 0               b1      = 0               vsat    = 80361.601     
+lvsat   = -0.0036185436   wvsat   = -0.0036015483   pvsat   = 3.6040694e-008  keta    = 0.01734601    
+lketa   = -7.996607e-009  wketa   = 5.9746285e-009  pketa   = -5.658389e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 16.413584       lbeta0  = 4.1902735e-006
+wbeta0  = 4.8460071e-007  pbeta0  = -2.0903603e-012  pclm    = 0.49565442      lpclm   = 6.5732467e-007
+wpclm   = -1.4822791e-007  ppclm   = 1.037972e-013   pdiblc1 = -1.2553689e-006  lpdiblc1= 5.6001953e-011
+wpdiblc1= 5.6101351e-012  ppdiblc1= 9.550784e-018   pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 4.0138582e-007
+lpscbe2 = -4.4826269e-013  wpscbe2 = -7.4649325e-014  ppscbe2 = 9.0101736e-020  delta   = 0.01          
+eta0    = 0.0001          etab    = -1e-005         dsub    = 0               elm     = 5             
+alpha1  = 0.13966486      lalpha1 = 3.8041749e-007  walpha1 = 4.5184691e-008  palpha1 = -2.2092946e-013
+vfb     = -1              lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6               cf      = 0               ckappa  = 0.6           
+cgdl    = 0              cgsl    = 0              vfbcv   = -1              lvfbcv  = 0             
+wvfbcv  = 0               pvfbcv  = 0               acde    = 1             lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0           lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.31024485     lkt1    = 7.6856618e-009  wkt1    = 4.3958136e-009  pkt1    = -1.6398516e-014
+kt1l    = 0               kt2     = -0.022355013    lkt2    = 3.8631072e-010  wkt2    = -1.0258057e-009
+pkt2    = 9.3705805e-016  ute     = -0.82506529     lute    = 5.9853831e-008  wute    = 8.3312601e-008
+pute    = -1.1767287e-013  ua1     = 1.5232039e-009  lua1    = -4.0323054e-016  wua1    = -7.3012068e-017
+pua1    = -5.7665111e-023  ub1     = -1.9585534e-018  lub1    = 5.2426458e-025  wub1    = 8.3372114e-026
+pub1    = -5.18986e-031   uc1     = -4.4660499e-012  luc1    = 7.703102e-017   wuc1    = 5.6804537e-017
+puc1    = -7.8831811e-023  prt     = 0               at      = 20000         
+noimod  = 2               noia    = 5.01e+020          noib    = 9.28e+3           noic    = 1.1e-011     
+em      = 42000000        ef      = 1.08             
+rsh     = 0               js      = 1.86e-7          jsw     = 9.5e-13               cj      = cjp3        
+mj      = 0.3757             cjsw    = cjswp3          mjsw    = 0.1672            pb      = 0.7405             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.0e-3               tcjsw   = 6.5e-4               tcjswg  = 6.5e-4               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3             
+cjswg   = cjswgp3	   mjswg   = 0.1672     pbswg   = 0.6      tlev=1     tlevc = 1 
*
.ENDL MOS_3V

.LIB MOS_N
*****************************************
*	  1.8V Native NMOS		*
*****************************************
.model  nnch.0  nmos  level = 49
**************************************************************
*               MODEL FLAG PARAMETERS 
**************************************************************
+lmin    = 5e-007          lmax    = 2e-005          wmin    = 2.2e-007        wmax    = 1e-004        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               lref    = 1e+020        
+wref    = 1e+020        
**************************************************************
*               GENERAL MODEL PARAMETERS 
**************************************************************
+tref    = 25              xl      = '-1.3e-008+dxlna'          xw      = '0+dxwna'               lmlt    = 1             
+wmlt    = 1               llc     = -0.035           lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxna     
+toxm    = toxna       wint    = 6.465e-010      lint    = 2.441e-008       dwc	 = 2.5e-8           
+hdif    = hdifna          ldif    = 1.24e-007       ll      = 0     
+wl      = 0               lln     = -1              wln     = 1               lw      = -9.462e-015   
+ww      = -1e-016         lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = -8.9e-022       cgbo    = 1e-013          cgso    = cgona       cgdo    = cgona     
+xpart   = 0             
**************************************************************
*               EXPERT PARAMETERS 
**************************************************************
+vth0    = '-0.0103+dvthna'         k1      = 0.1424          k2      = -0.05051        k3      = -0.95         
+k3b     = -0.9            nlx     = 9.5e-007        dvt0    = 0.42            dvt1    = 0.53          
+dvt2    = 0.085           dvt0w   = 0.103           dvt1w   = 959500          dvt2w   = -0.03         
+nch     = 3.90222e+016    voff    = -0.1088         pvoff   = -4.198e-015     nfactor = 0.884         
+pnfactor= -1.85e-016      cdsc    = 0               cdscb   = 0               cdscd   = 0.00019577045 
+cit     = 0               u0      = 0.05663         ua      = 1.623e-010      pua     = 2e-024        
+ub      = 2.067e-018      pub     = -1.65e-031      uc      = -2.051e-011     puc     = 3.2e-024      
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = -6e-008         prwg    = 0.7309        
+prwb    = -0.03183        wr      = 1               rdsw    = 89.99           a0      = 1.46          
+la0     = -2.276e-007     pa0     = 4e-013          ags     = 0.06801         lags    = 1.24e-006     
+pags    = -2.5e-013       a1      = 0               a2      = 0.99            b0      = -3.134e-007   
+b1      = 0               vsat    = 82460           keta    = -0.0127         lketa   = -1.746e-008   
+wketa   = 1.229e-009      pketa   = 1e-015          dwg     = -1.1e-009       dwb     = 6.817e-009    
+alpha0  = -2.108e-009     beta0   = 8.678           lbeta0  = -1.1186209e-007  pclm    = 0.477         
+lpclm   = -2.992e-008     pdiblc1 = 0.006922        lpdiblc1= 1.834e-008      ppdiblc1= 2.024e-016    
+pdiblc2 = 0.002781        pdiblcb = 0.18            drout   = 0               pvag    = 0             
+pscbe1  = 7.683e+008      pscbe2  = 2.9e-005        delta   = 0.005           eta0    = 0.00336       
+leta0   = 2.125e-009      weta0   = 1.304e-009      peta0   = 2.405e-015      etab    = 0.0009467     
+wetab   = 4.61e-010       dsub    = 0               elm     = 5               alpha1  = 0.02731       
+vfb     = -1            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -0.9086795      acde    = 1.5             
+moin    = 15              noff    = 1               voffcv  = 0             
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+kt1     = -0.2684         wkt1    = -6e-009         kt1l    = 0               kt2     = -0.0007066    
+ute     = -1.456          wute    = 4.94e-008       ua1     = 3.939e-009      ub1     = -5.312e-018   
+uc1     = 1.947e-012      prt     = 0               at      = 17970           pat     = 9.108e-010    
**************************************************************
*               DIODE PARAMETERS 
**************************************************************
+rsh     = 0               js      = 8.23e-7          jsw     = 3.00e-12               cj      = cjna        
+mj      = 0.35            cjsw    = cjswna          mjsw    = 0.1            pb      = 0.60             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 1               tt      = 0               ijth    = 0.1             tcj     = 2e-3             
+tcjsw   = 1.21e-3         tcjswg  = 1.21e-3         tpb     = 2e-3               tpbsw   = 2e-3             
+tpbswg  = 2e-3            cjswg   = cjswgna        mjswg   = 0.42   pbswg =1    tlev=1    tlevc=1    
*
.ENDL MOS_N
*
.LIB MOS_N3
*****************************************
*	  3.3V Native NMOS		*
*****************************************

.model  nnch3.0  nmos  level = 49
**************************************************************
*               MODEL FLAG PARAMETERS 
**************************************************************
+lmin    = 1.2e-006        lmax    = 2e-005          wmin    = 2.2e-007        wmax    = 1e-004        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 1e+020          wref    = 1e+020        
**************************************************************
*               GENERAL MODEL PARAMETERS 
**************************************************************
+tref    = 25              xl      = '-1.3e-008+dxlna3'       xw      = '0+dxwna3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = -0.02           lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxna3        toxm    = toxna3        wint    = 1.996e-008      lint    = 1.199e-007    
+dwc	 = 1.6e-8              hdif    = hdifna3          ldif    = 1.24e-007     
+ll      = 0               wl      = 6.879e-015      lln     = -1              wln     = 1             
+lw      = 6.468e-016      ww      = 9.206e-016      lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = -8.659e-022     cgbo    = 1e-013          cgso    = cgona3     
+cgdo    = cgona3       xpart   = 0             
**************************************************************
*               EXPERT PARAMETERS 
**************************************************************
+vth0    = '-0.1169+dvthna3'         pvth0   = -1.284e-014     k1      = 0.07289         pk1     = 5.236e-014    
+k2      = -0.00213        pk2     = -1.574e-014     k3      = -2.8            k3b     = -2.35         
+nlx     = 3.5e-007        dvt0    = 0.36            dvt1    = 0.21            dvt2    = 0.07          
+dvt0w   = 0               dvt1w   = 0               dvt2w   = 0               nch     = 3.919737e+015 
+voff    = -0.1104         nfactor = 0.4079102       cdsc    = 1e-010          cdscb   = 0             
+cdscd   = 0               cit     = 0.0004273       u0      = 0.05169         wu0     = 9.23e-010     
+pu0     = 2.211e-016      ua      = 5.36e-011       wua     = 7.6e-017        pua     = -8.803e-023   
+ub      = 2.159e-018      wub     = -4.4e-026       pub     = -2.157e-031     uc      = -6.4e-013     
+puc     = -1.215e-023     ngate   = 5e+020          xj      = 1.5000001e-007  w0      = -1e-008       
+prwg    = 0.08232         prwb    = 0.04192         wr      = 1               rdsw    = 484           
+a0      = 1.33            la0     = -1.988e-012     wa0     = 4.299e-007      pa0     = -7.115e-013   
+ags     = 0.7601          lags    = 3.901e-007      wags    = -3.796e-008     pags    = -8.645e-014   
+a1      = 0               a2      = 0.99            b0      = 0               b1      = 0             
+vsat    = 86500           keta    = -0.01652        wketa   = -1.379e-009     pketa   = -3.6e-015     
+dwg     = -4.928e-009     dwb     = -1.382e-009     alpha0  = 4.407e-010      beta0   = 7.26          
+pclm    = 0.3295          pdiblc1 = 0.001396        pdiblc2 = 0.01            pdiblcb = 0.1513672     
+drout   = 0.1913          pvag    = 0               pscbe1  = 5.531e+008      pscbe2  = 6.336e-008    
+delta   = 0.02085         eta0    = 0.02729         etab    = 0               letab   = 3e-009        
+dsub    = 0.1183          elm     = 5               alpha1  = 0.001577        vfb     = -1            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1       acde    = 1             
+moin    = 15              noff    = 1               voffcv  = 0        
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+kt1     = -0.2948         wkt1    = 6e-009          pkt1    = -1.4e-014       kt1l    = -5e-010       
+kt2     = -0.01351        ute     = -1.821          lute    = 1.681e-007      wute    = 6.785e-008    
+pute    = -4e-014         ua1     = 1.475e-009      lua1    = -4.682e-023     wua1    = 1.746e-017    
+ub1     = -3.313e-018     lub1    = 2.093e-025      uc1     = -1.68e-011      luc1    = -5.8e-018     
+wuc1    = 9.8e-018        prt     = 449.4           at      = 33000           lat     = -0.006        
+pat     = 2e-009        
**************************************************************
+rsh     = 4.5             js      = 9.53e-7          jsw     = 3e-12           cj      = cjna3        
+mj      = 0.41            cjsw    = cjswna3          mjsw    = 0.1            pb      = 0.60             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 1               tt      = 0               ijth    = 0.1             tcj     = 3.9e-3             
+tcjsw   = 5.61e-3         tcjswg  = 5.61e-3         tpb     = 2.5e-3          tpbsw   = 2.5e-3             
+tpbswg  = 2.5e-3          cjswg   = cjswgna3        mjswg   = 0.5   pbswg =1    tlev=1    tlevc=1  
*
.ENDL MOS_N3
*
.LIB MOS_M 
*****************************************
*	  1.8V Medium Vt NMOS		*
*****************************************
.model  mnch.0  nmos  level = 49
+lmin    = 3e-007          lmax    = 2.0001e-005     wmin    = 2.2e-007        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               hspver  = 2000.2        
+lref    = 3e-007          wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxlm'       xw      = '0+dxwm'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0315               lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxnm     
+toxm    = toxnm       wint    = 2e-008          lint    = 2e-008             dlc	 = 5e-10          
+ dwc	 = 0              hdif    = hdifnm          ldif    = 1.24e-007       ll      = 0             
+wl      = 0               lln     = -1               wln     = 1               lw      = 0             
+ww      = 0               lwn     = 1               wwn     = 1               lwl     = 0             
+wwl     = 0               cgbo    = 1e-013          cgso    = cgonm               cgdo    = cgonm             
+xpart   = 0             
+vth0    = '0.26879537+dvthnm'      lvth0   = 8.534616e-009   wvth0   = -9.5983004e-009  pvth0   = 1.0214874e-015
+k1      = 0.53028132      lk1     = -3.1162544e-008  wk1     = -8.2304007e-009  pk1     = -2.1915547e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 4.27e+017       voff    = -0.1125936    
+lvoff   = 9.5074655e-009  wvoff   = 2.7325892e-009  pvoff   = -3.6225657e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.0008        
+u0      = 0.036615553     lu0     = 2.7689835e-009  wu0     = 1.3069464e-009  pu0     = -5.0981507e-016
+ua      = -1.3284462e-009  lua     = 8.2244528e-017  wua     = 1.6942682e-016  pua     = -8.2508322e-023
+ub      = 3.261887e-018   lub     = -4.612046e-027  wub     = -2.4838151e-025  pub     = 5.0981507e-032
+uc      = 1.6926576e-010  luc     = -4.8855832e-018  wuc     = -1.7393136e-017  puc     = -2.8039829e-024
+ngate   = 5e+020          xj      = 1.5000001e-007  w0      = 0               prwg    = 0             
+prwb    = 0               wr      = 1               rdsw    = 101.6           a0      = 1.8668082     
+la0     = -2.0057117e-007  wa0     = 8.1482936e-008  pa0     = 1.7318854e-014  ags     = 0.57929321    
+lags    = -8.9772823e-008  wags    = -4.7939135e-009  pags    = 4.0938428e-014  a1      = 0             
+a2      = 0.99            b0      = 0               b1      = 0               vsat    = 76172.764     
+lvsat   = -0.00034177001  wvsat   = 0.0015284997    pvsat   = 8.0558209e-010  keta    = -0.063441275  
+lketa   = 1.3211678e-008  wketa   = 7.7427454e-009  pketa   = -4.3905385e-015  dwg     = 0             
+dwb     = 0               alpha0  = 0               beta0   = 15.398217       lbeta0  = -2.5931881e-007
+wbeta0  = -1.244874e-007  pbeta0  = 3.4823433e-014  pclm    = 0.98429814      lpclm   = 1.5618641e-007
+wpclm   = -3.1368056e-009  ppclm   = 3.1201806e-014  pdiblc1 = -7.1811278e-005  lpdiblc1= 1.4064532e-009
+wpdiblc1= 8.1482446e-011  ppdiblc1= 2.3340987e-017  pdiblc2 = 1e-005          pdiblcb = 0             
+drout   = 0               pvag    = 0               pscbe1  = 2e+008          pscbe2  = 9.6802626e-008
+lpscbe2 = -2.1531169e-014  wpscbe2 = -1.5032129e-015  ppscbe2 = 1.2768592e-021  delta   = 0.01          
+eta0    = 0.0001          etab    = 5.448958e-005   letab   = -3.5899526e-010  wetab   = -2.9130528e-010
+petab   = 8.4086984e-017  dsub    = 0               elm     = 5               alpha1  = 3.6415296     
+lalpha1 = -4.1089787e-007  walpha1 = -2.1725527e-007  palpha1 = 5.8642662e-014  vfb     = -1            
+lvfb    = 0               wvfb    = 0               pvfb    = 0             
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1.0253631      lvfbcv  = 5.4188433e-010
+wvfbcv  = -1.7432496e-009  pvfbcv  = 3.62303e-016    acde    = 1               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1               lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0               lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.24222986     lkt1    = 3.2506533e-009  wkt1    = 7.0540309e-010  pkt1    = 3.1944696e-015
+kt1l    = 0               kt2     = -0.00084692936  lkt2    = 1.6045085e-009  wkt2    = -1.3845167e-011
+pkt2    = -1.9404598e-015  ute     = -1.4526468      lute    = 1.4475236e-007  wute    = 8.3940791e-008
+pute    = -3.3021901e-014  ua1     = 3.7343203e-009  lua1    = 3.7980385e-016  wua1    = 1.7753399e-017
+pua1    = -1.273609e-022  ub1     = -5.1360692e-018  lub1    = 4.7921458e-026  wub1    = 1.2924524e-025
+pub1    = 2.7255141e-032  uc1     = -7.9343806e-011  luc1    = -7.4852512e-018  wuc1    = -1.2128699e-017
+puc1    = 1.3929373e-024  prt     = 0               at      = 20000         
+noimod  = 1               noia    = 1e+020          noib    = 50000           noic    = -1.4e-012     
+em      = 41000000        af      = 1               ef      = 1               kf      = 0             
+gdsnoi  = 1             
+rsh     = 0               js      = 1.98e-6          jsw     = 2.5e-11               cj      = cjnm        
+mj      = 0.31            cjsw    = cjswnm          mjsw    = 0.32            pb      = 0.7             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6               ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 1.00e-3              tcjsw   = 1e-3               tcjswg  = 1e-3               tpb     = 2e-3             
+tpbsw   = 2e-3               tpbswg  = 2e-3   
+cjswg   = cjswgnm        mjswg   = 0.5   pbswg =0.6    tlev=1    tlevc=1                  
*****************************************
*	  1.8V Medium Vt PMOS		*
*****************************************
.model  mpch.0  pmos  level = 49
**************************************************************
*               MODEL FLAG PARAMETERS 
**************************************************************
+lmin    = 2.5e-007        lmax    = 2e-005          wmin    = 2.2e-007        wmax    = 1e-004        
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+lref    = 1e+020          wref    = 1e+020        
**************************************************************
*               GENERAL MODEL PARAMETERS 
**************************************************************
+tref    = 25              xl      = '-1.3e-008+dxlm'       xw      = '0+dxwm'               lmlt    = 1             
+wmlt    = 1               llc     = -0.0332         lwc     = 0               lwlc    = 0             
+wlc     = 0               wwc     = 0               wwlc    = 0               tox     = toxpm     
+toxm    = toxpm       wint    = 5.974e-009      lint    = 1.183e-008        dlc = 6e-9           
+dwc	 = 1e-9             hdif    = hdifpm          ldif    = 1.24e-007       ll      = 6e-016        
+wl      = -3.538e-015     lln     = -1              wln     = 1               lw      = 1.143e-015    
+ww      = -7.662e-016     lwn     = 1               wwn     = 1               lwl     = 4.583e-022    
+wwl     = 1.939e-022      cgbo    = 1e-013          cgso    = cgopm              cgdo    = cgopm             
+xpart   = 0             
**************************************************************
*               EXPERT PARAMETERS 
**************************************************************
+vth0    = '-0.1154+dvthpm'         k1      = 0.348           k2      = -0.01684        lk2     = 2e-009        
+pk2     = -4e-016         k3      = 1.1             k3b     = -0.2676         nlx     = 2.02e-007     
+dvt0    = 0.01            dvt1    = 0.5             dvt2    = 0               dvt0w   = -0.1105       
+dvt1w   = 470600          dvt2w   = 0.3907          nch     = 1.57e+017       voff    = -0.08055      
+lvoff   = -2.6e-009       wvoff   = -3.288e-009     pvoff   = -1.991e-015     nfactor = 1.162         
+lnfactor= 1.4e-007        wnfactor= 6.755e-008      pnfactor= -2.06e-014      cdsc    = 0             
+cdscb   = 0               cdscd   = 0               cit     = 0.0002394       u0      = 0.01116       
+lu0     = -8e-011         pu0     = -1.269e-016     ua      = 2.351e-010      ub      = 1.774e-018    
+pub     = -2e-032         uc      = 2e-011          puc     = -3.537e-024     ngate   = 5e+020        
+xj      = 1.5000001e-007  w0      = 0               prwg    = -0.005385       prwb    = -0.02         
+wr      = 1.0135386       rdsw    = 333             a0      = 1.539           la0     = -7.42e-008    
+wa0     = -7.099e-008     ags     = 0.3954          lags    = 1.045e-006      wags    = -3.662e-008   
+pags    = -5.931e-014     a1      = 0               a2      = 1               b0      = 0             
+b1      = 0               vsat    = 66220           keta    = -0.02067        lketa   = -1.053e-008   
+wketa   = 2.288e-009      pketa   = 4.999e-015      dwg     = -1.186e-008     dwb     = -3.088e-009   
+alpha0  = 0               beta0   = 20.74           pclm    = 2.228           pdiblc1 = 0             
+pdiblc2 = 5e-005          pdiblcb = 0               drout   = 0               pvag    = 0             
+pscbe1  = 6.526e+008      pscbe2  = 9.5e-006        delta   = 0.007086        eta0    = 0.001664      
+leta0   = 7.39e-010       weta0   = -6e-011         peta0   = 3.4e-017        etab    = 1.223e-005    
+letab   = -3.18e-010      wetab   = -1.36e-010      petab   = -1.604e-016     dsub    = 0.0004        
+elm     = 5               alpha1  = 3.62            vfb     = -1            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+clc     = 1e-007          cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1.044927       acde    = 1             
+moin    = 15              noff    = 1               voffcv  = 0             
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+kt1     = -0.2284         wkt1    = -2.678e-008     pkt1    = 5.189e-015      kt1l    = -1.814e-008   
+kt2     = -0.02477        wkt2    = -6.323e-009     pkt2    = 8.664e-016      ute     = -2.018        
+lute    = 1.709e-007      wute    = 1.009e-007      pute    = -5.723e-014     ua1     = -2.469e-009   
+lua1    = 1.042e-015      wua1    = 8.757e-016      pua1    = -3.556e-022     ub1     = 8.782e-019    
+lub1    = -8.886e-025     wub1    = -1.123e-024     pub1    = 2.295e-031      uc1     = 1.595e-012    
+luc1    = -1.991e-017     wuc1    = -2.425e-017     puc1    = 5.8e-025        prt     = 0             
+at      = 103400          lat     = -0.00412        wat     = 0.00827         pat     = -2.5e-009 
**************************************************************
*               DIODE PARAMETERS 
**************************************************************
+rsh     = 5.8             js      = 4.2e-7          jsw     = 8.5e-11               cj      = cjpm        
+mj      = 0.45             cjsw    = cjswpm          mjsw    = 0.28            pb      = 0.85             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+tt      = 0               ijth    = 0.1             tcj     = 1e-3              tcjsw   = 6.5e-4             
+tcjswg  = 6.5e-4          tpb     = 2e-3               tpbsw   = 2e-3               tpbswg  = 2e-3
+cjswg   = cjswgpm        mjswg   = 0.5   pbswg =0.6    tlev=1    tlevc=1             
*
.ENDL MOS_M        
*
.LIB MOS_M3
*****************************************
*	  3.3V Medium Vt NMOS		*
*****************************************

.model  mnch3.0  nmos  level = 49
+lmin    = 6e-007          lmax    = 2.0001e-005     wmin    = 2.2e-007        wmax    = 1.0001e-004   
+version = 3.2             mobmod  = 1               capmod  = 3               nqsmod  = 0             
+binunit = 2               paramchk= 1               binflag = 0               vfbflag = 0             
+hspver  = 2000.2          lref    = 6e-007          wref    = 2.2e-007      
+tref    = 25              xl      = '-1.3e-008+dxlm3'       xw      = '0+dxwm3'               lmlt    = 1             
+wmlt    = 1               ld      = 0               llc     = 0.002               lwc     = 0             
+lwlc    = 0               wlc     = 0               wwc     = 0               wwlc    = 0             
+tox     = toxnm3        toxm    = toxnm3        wint    = -4e-009         lint    = 5e-008        
+dwc	 = 5e-9            dlc	 = 7e-8              hdif    = hdifnm3	ldif    = 1.24e-007     
+ll      = 0               wl      = 0               lln     = -1               wln     = 1             
+lw      = 0               ww      = 0               lwn     = 1               wwn     = 1             
+lwl     = 0               wwl     = 0               cgbo    = 1e-013          cgso    = cgonm3     
+cgdo    = cgonm3       xpart   = 0             
+vth0    = '0.42665431+dvthnm3'      lvth0   = 1.758353e-008   wvth0   = 1.0041617e-008  pvth0   = -1.3468922e-014
+k1      = 0.89230886      lk1     = -7.6132573e-008  wk1     = -1.6425127e-008  pk1     = 3.2268048e-015
+k2      = -0.01           k3      = 0               k3b     = 0               nlx     = 0             
+dvt0    = 0               dvt1    = 0               dvt2    = 0               dvt0w   = 0             
+dvt1w   = 0               dvt2w   = 0               nch     = 5.1e+017        voff    = -0.079762563  
+lvoff   = 1.6512245e-008  wvoff   = -8.3467668e-009  pvoff   = 3.6092409e-015  nfactor = 1             
+cdsc    = 0               cdscb   = 0               cdscd   = 0               cit     = 0.00019046844 
+lcit    = -4.4058129e-011  wcit    = 1.4724183e-010  pcit    = -7.1706773e-017  u0      = 0.035514006   
+lu0     = 8.0804746e-009  wu0     = -3.7585636e-010  pu0     = -1.3588434e-015  ua      = -1.0509044e-009
+lua     = -1.0396757e-016  wua     = 4.2020313e-017  pua     = -7.7048928e-023  ub      = 2.8247398e-018
+lub     = 1.472742e-025   wub     = -1.1581972e-025  pub     = -1.0516993e-031  uc      = 1.2301826e-010
+luc     = 5.592177e-018   wuc     = -1.3649002e-017  puc     = -1.1879422e-023  ngate   = 5e+020        
+xj      = 1.5000001e-007  w0      = 0               prwg    = 0               prwb    = 0             
+wr      = 1               rdsw    = 500             a0      = 1.4068553       la0     = -1.9132353e-007
+wa0     = -7.4692629e-008  pa0     = 9.4891963e-014  ags     = 0.28474034      lags    = -1.3566133e-008
+wags    = -1.3824974e-008  pags    = 1.1198208e-014  a1      = 0               a2      = 0.99          
+b0      = 0               b1      = 0               vsat    = 52847.011       lvsat   = 0.01143333    
+wvsat   = 0.0034072756    pvsat   = -2.3615431e-009  keta    = -0.039436097    lketa   = 8.0047021e-009
+wketa   = -1.9953426e-012  pketa   = -1.3182095e-015  dwg     = 0               dwb     = 0             
+alpha0  = 0               beta0   = 22.492047       lbeta0  = 6.479876e-008   wbeta0  = 1.2185762e-008
+pbeta0  = 1.7926693e-014  pclm    = 0.99492322      lpclm   = 8.0135399e-008  wpclm   = -4.5113912e-008
+ppclm   = 1.4638939e-013  pdiblc1 = 0.00054527056   lpdiblc1= 2.0555851e-010  wpdiblc1= -8.0727602e-011
+ppdiblc1= 1.9838875e-016  pdiblc2 = 1e-005          pdiblcb = 0               drout   = 0             
+pvag    = 0               pscbe1  = 2e+008          pscbe2  = 5.547353e-007   lpscbe2 = -2.5365633e-013
+wpscbe2 = -4.290903e-014  ppscbe2 = 2.0553551e-020  delta   = 0.01            eta0    = 0.0001        
+etab    = 1.0808529e-005  letab   = -2.0573393e-010  wetab   = 3.1923669e-012  petab   = -3.1562931e-017
+dsub    = 0               elm     = 5               alpha1  = 4.1913614       lalpha1 = 7.1580318e-008
+walpha1 = 8.6803234e-009  palpha1 = 5.2584967e-014  vfb     = -1              lvfb    = 0             
+wvfb    = 0               pvfb    = 0             
+clc     = 1e-007        cle     = 0.6             cf      = 0               ckappa  = 0.6           
+cgdl    = 0               cgsl    = 0               vfbcv   = -1.2677261      lvfbcv  = -3.4210866e-008
+wvfbcv  = 8.8635763e-009  pvfbcv  = 5.4032249e-015  acde    = 1               lacde   = 0             
+wacde   = 0               pacde   = 0               moin    = 15              lmoin   = 0             
+wmoin   = 0               pmoin   = 0               noff    = 1           lnoff   = 0             
+wnoff   = 0               pnoff   = 0               voffcv  = 0          lvoffcv = 0             
+wvoffcv = 0               pvoffcv = 0             
+kt1     = -0.25696827     lkt1    = 1.1241297e-008  wkt1    = 4.6511636e-009  pkt1    = -3.3104627e-015
+kt1l    = 0               kt2     = -0.01850456     lkt2    = 1.4195579e-009  wkt2    = 2.1951508e-009
+pkt2    = -8.2701812e-016  ute     = -1.9389874      lute    = 3.3272121e-007  wute    = -5.2779206e-008
+pute    = -3.8721658e-014  ua1     = 1.3369351e-009  lua1    = 6.9878518e-016  wua1    = -1.0849091e-016
+pua1    = -1.7532306e-022  ub1     = -2.5452261e-018  lub1    = -5.2976601e-027  wub1    = -2.4072675e-025
+pub1    = 2.7858081e-031  uc1     = -6.3340169e-011  luc1    = 4.4437368e-017  wuc1    = -1.4711824e-017
+puc1    = 1.6390973e-023  prt     = 0               at      = 20530.163       lat     = -0.0052417232 
+wat     = -0.0001208772   pat     = 1.1951129e-009
+noimod  = 1               noia    = 1e+020          noib    = 50000           noic    = -1.4e-012     
+em      = 41000000        af      = 1               ef      = 1               kf      = 0             
+gdsnoi  = 1             
+rsh     = 0               js      = 1.98e-6          jsw     = 1.12e-11        cj      = cjnm3       
+mj      = 0.35            cjsw    = cjswnm3          mjsw    = 0.19            pb      = 0.81             
+rd      = 0               rdc     = 0               rs      = 0               rsc     = 0             
+xti     = 3               acm     = 12              calcacm = 1               nj      = 1             
+pbsw    = 0.6             ptc     = 0               tt      = 0               ijth    = 0.1           
+tcj     = 8.01e-4         tcjsw   = 4.31e-4          tcjswg  = 4.31e-4          tpb     = 2e-3             
+tpbsw   = 2e-3            tpbswg  = 2e-3  
+cjswg   = cjswgnm3        mjswg   = 0.19   pbswg = 0.6   tlev=1    tlevc=1		                
*
.ENDL MOS_M3 



.LIB BIP_TT
.param
+isp= 1         bfp= 1         nfp= 1         rbp= 1    rep= 1               
+rcp= 1	        rbmp= 1 	cjep= 1        cjcp= 1     
    
.lib 'gd018.l' BIP
.ENDL BIP_TT

.LIB BIP_SS
.param
+isp= 0.70      bfp= 0.85      nfp= 1.005     rbp= 1.2    rep= 1.2           
+rcp= 1.2       rbmp= 1.2      cjep= 1.05     cjcp= 1.05      
.lib 'gd018.l' BIP
.ENDL BIP_SS

.LIB BIP_FF
.param
+isp= 1.30      bfp= 1.15      nfp= 0.995     rbp= 0.8       rep= 0.8        
+rcp= 0.8       rbmp= 0.8      cjep= 0.95     cjcp= 0.95      
.lib 'gd018.l' BIP
.ENDL BIP_FF

.LIB BIP
************************************************************
*             1.8V Vertical  BJT model
************************************************************
.model  pnp10  pnp  level = 1
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cjc     = '6.27e-14*cjcp'       cje     = '1.16e-13*cjep'         mjc     = 0.5            mje     = 0.4177          
+vjc     = 0.6	          vje     = 0.7881   	     
**************************************************************
*               Noise PARAMETERS 
**************************************************************
**************************************************************
*               DC PARAMETERS 
**************************************************************
+is      = '1.331e-017*isp'       subs    = 1               update  = 0               rb      = '48.08*rbp'         
+re      = '2.334*rep'           irb     = 0.002165        rc      = '10*rcp'              rbm     = '1*rbmp'             
+bf      = '2.77*bfp'            nf      = '1.002*nfp'           vaf     = 418.6           ikf     = 0.001481      
+ise     = 7.296e-018      ne      = 1.177           ns      = 1               br      = 0.008354      
+nr      = 0.9865          var     = 30              ikr     = 2.911e-005      nkf     = 0.4586        
+isc     = 7.296e-018      nc      = 0.9168        
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+xtb     = 0               xti     = 3               eg      = 1.18            ctc     = 0.00287       
+cte     = 0.001           tlev    = 1               tlevc   = 1               tise1   = 0             
+tnf1    = 0.0001463       tnr1    = -0.00036        tne1    = 0               tnc1    = 0             
+tbf1    = 0.004802        tbr1    = 0.006           tvar1   = 0               tikf1   = -0.004215     
+tikr1   = 0.0006188       trb1    = 0.001006        tirb1   = 0               tise2   = 0             
+tnf2    = 2e-007          tnr2    = 0               tne2    = 0               tnc2    = 0             
+tbf2    = 3.9e-006        tbr2    = 0               tvar2   = 0               tikf2   = 0             
+trb2    = -9.112e-006     tirb2   = 0               tvjc    = 3.12e-3	       tvje    = 2e-3
  


.model  pnp5  pnp  level = 1
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cjc     = '3.65e-14*cjcp'       cje     = '3.15e-14*cjep'         mjc     = 0.5            mje     = 0.4177          
+vjc     = 0.6	          vje     = 0.7881   	     
**************************************************************
*               Noise PARAMETERS 
**************************************************************
**************************************************************
*               DC PARAMETERS 
**************************************************************
+is      = '3.731e-018*isp'      subs    = 1               update  = 0               rb      = '91.88*rbp'         
+re      = '2.216*rep'           irb     = 0.0007971       rc      = '10*rcp'              rbm     = '1*rbmp'             
+bf      = '2.74*bfp'            nf      = '1.002*nfp'           vaf     = 183.8           ikf     = 0.0005884     
+ise     = 1.178e-017      ne      = 1.274           ns      = 1               br      = 0.003433      
+nr      = 0.9831          var     = 30              ikr     = 3.097e-005      nkf     = 0.4141        
+isc     = 1.178e-017      nc      = 1.181         
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+xtb     = 0               xti     = 3               eg      = 1.18            ctc     = 0.00287       
+cte     = 0.001           tlev    = 1               tlevc   = 1               tnf1    = 0.0001311     
+tnr1    = -2.572e-005     tne1    = 0               tbf1    = 0.004945        tbr1    = -0.002666     
+tikf1   = -0.00575        tikr1   = 0.0006002       trb1    = 0.0001278       tnf2    = 1e-007        
+tbf2    = 4.858e-006      tikf2   = 1.5e-005        trb2    = 4e-006    tvjc    = 3.12e-3	       tvje    = 2e-3 


.model  pnp2  pnp  level = 1
**************************************************************
+tref    = 25            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cjc     = '2.37e-14*cjcp'       cje     = '6.17e-15*cjep'         mjc     = 0.5            mje     = 0.4177          
+vjc     = 0.6	          vje     = 0.7881   	     
**************************************************************
*               Noise PARAMETERS 
**************************************************************
**************************************************************
*               DC PARAMETERS 
**************************************************************
+is      = '6.01e-019*isp'       subs    = 1               update  = 0               rb      = '175.5*rbp'         
+re      = '1.816*rep'           irb     = 0.0005887       rc      = '10*rcp'               rbm     = '1*rbmp'             
+bf      = '2.75*bfp'            nf      = '0.992*nfp'           vaf     = 207             ikf     = 0.0002031     
+ise     = 2.04e-018       ne      = 1.261           ns      = 1               br      = 0.001029      
+nr      = 0.9665          var     = 17.54           ikr     = 3.097e-005      nkf     = 0.3728        
+isc     = 2.04e-018       nc      = 1.05          
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+xtb     = 0               xti     = 3               eg      = 1.18            ctc     = 0.00287       
+cte     = 0.001           tlev    = 1               tlevc   = 1               tnf1    = 9.522e-005    
+tnr1    = 0.0001328       tne1    = 0               tbf1    = 0.005412        tbr1    = 0.003947      
+tikf1   = -0.005053       tikr1   = 0.0006002       trb1    = -0.00044        tirb1   = 0             
+tnf2    = 1e-007          tbf2    = 7.267e-006      tikf2   = 1.249e-005      trb2    = 3.8e-006     
+tvjc    = 3.12e-3	   tvje    = 2e-3    

.model  npn10  npn  level = 1
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cjc     = '2.13e-13*cjcp'      cje     = '1.09e-13*cjep'         mjc     = 0.35            mje     = 0.3494 
+vjc     = 0.6	          vje     = 0.6302   	     cte     = 1.05e-3	       ctc     = 1.2e-3
**************************************************************
*               DC PARAMETERS 
**************************************************************
+is      = '3.261e-017*isp'      subs    = 1               update  = 0               rb      = '127.2*rbp'
+re      = '16.44*rep'           irb     = 0.001       rc      = '10*rcp'              rbm     = '1*rbmp'
+bf      = '25.4*bfp'		nf      = '1.012*nfp'	vaf     = 45.99	 	ikf     = 0.02
+ise     = 3.337e-017      ne      = 1.228           ns      = 1               br      = 2.95
+nr      = 0.9967          var     = 30              ikr     = 0.0001          nkf     = 0.5572
+isc     = 9.079e-015      nc      = 1.313         
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+xtb     = 0               xti     = 3               eg      = 1.18            tlev    = 1             
+tlevc   = 1               tnf1    = 7.76e-005       tnr1    = -0.00036        tne1    = 0.0005167     
+tnc1    = 0.00044         tbf1    = 0.006448        tbr1    = 0.009           tikf1   = -0.003385     
+tikr1   = 0.0006188       trb1    = 0.004266        tnf2    = -4.012e-008     tnc2    = 0             
+tbf2    = 3.989e-006      tbr2    = -9.2e-006       tikf2   = -7.54e-007 

.model  npn5  npn  level = 1
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cjc     = '1.08e-13*cjcp'      cje     = '2.91e-14*cjep'         mjc     = 0.35            mje     = 0.3494          
+vjc     = 0.6	          vje     = 0.6302   	     cte     = 1.05e-3	       ctc     = 1.2e-3
**************************************************************
*               DC PARAMETERS 
**************************************************************
+is      = '1.062e-017*isp'      subs    = 1               update  = 0               rb      = '207.8*rbp'         
+re      = '16.44*rep'           irb     = 0.001       rc      = '10*rcp'              rbm     = '1*rbmp'               
+bf      = '26.92*bfp'           nf      = '1.022*nfp'           vaf     = 50.13           ikf     = 0.0054        
+ise     = 1.073e-017      ne      = 1.234           ns      = 1               br      = 2.95          
+nr      = 0.9768          var     = 30              ikr     = 0.0001          nkf     = 0.4569        
+isc     = 9.079e-015      nc      = 1.379         
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+xtb     = 0               xti     = 3               eg      = 1.18            tlev    = 1             
+tlevc   = 1               tnf1    = 7.76e-005       tnr1    = -0.00036        tne1    = 0.0004805     
+tnc1    = 0.0002552       tbf1    = 0.00677         tbr1    = 0.009           tikf1   = -0.008        
+tikr1   = 0.0006188       trb1    = 0.003925        tnf2    = -5.617e-007     tnc2    = 0             
+tbf2    = 9.515e-006      tbr2    = -9.2e-006       tikf2   = 1.859e-005    

.model  npn2  npn  level = 1
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cjc     = '6.18e-14*cjcp'      cje     = '5.59e-15*cjep'         mjc     = 0.35            mje     = 0.3494          
+vjc     = 0.6	          vje     = 0.6302   	     cte     = 1.05e-3	       ctc     = 1.2e-3
**************************************************************
*               DC PARAMETERS 
**************************************************************
+is      = '2.48e-018*isp'       subs    = 1               update  = 0               rb      = '230.7*rbp'         
+re      = '16.44*rep'           irb     = 0.001       rc      = '10*rcp'              rbm     = '1*rbmp'          
+bf      = '28.35*bfp'           nf      = '1.022*nfp'           vaf     = 45.12           ikf     = 0.002854      
+ise     = 2.36e-018       ne      = 1.232           ns      = 1               br      = 2.95          
+nr      = 0.9768          var     = 30              ikr     = 0.0001          nkf     = 0.5391        
+isc     = 9.079e-015      nc      = 1.351         
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+xtb     = 0               xti     = 3               eg      = 1.18            tlev    = 1             
+tlevc   = 1               tnf1    = 0.0001126       tnr1    = -0.00036        tne1    = 0.0002114     
+tnc1    = 0.0002552       tbf1    = 0.007447        tbr1    = 0.009           tikf1   = -0.00696      
+tikr1   = 0.0006188       trb1    = -0.0002352      tnf2    = -5.336e-007     tnc2    = 0             
+tbf2    = 1.094e-005      tbr2    = -9.2e-006       tikf2   = 1.878e-005    
*
.ENDL BIP
*
.LIB BIP3_TT
.param
+isp3= 1         bfp3= 1         nfp3= 1         rbp3= 1    rep3= 1               
+rcp3= 1         rbmp3= 1 	 cjep3= 1        cjcp3= 1     
   
.lib 'gd018.l' BIP3
.ENDL BIP3_TT

.LIB BIP3_SS
.param
+isp3= 0.70      bfp3= 0.85      nfp3= 1.005     rbp3= 1.2    rep3= 1.2           
+rcp3= 1.2       rbmp3= 1.2      cjep3= 1.05     cjcp3= 1.05      
.lib 'gd018.l' BIP3
.ENDL BIP3_SS

.LIB BIP3_FF
.param
+isp3= 1.30      bfp3= 1.15      nfp3= 0.995     rbp3= 0.8       rep3= 0.8        
+rcp3= 0.8       rbmp3= 0.8      cjep3= 0.95     cjcp3= 0.95      
.lib 'gd018.l' BIP3
.ENDL BIP3_FF
.LIB BIP3
************************************************************
*             3.3V Vertical BJT model
************************************************************ 

.model  pnp10_3  pnp  level = 1
**************************************************************
+tref    = 25            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cjc     = '6.27e-14*cjcp3'      cje     = '1.09e-13*cjep3'          mjc     = 0.5            mje     = 0.3757         
+vjc     = 0.6	          vje     = 0.7405   	     
**************************************************************
*               Noise PARAMETERS 
**************************************************************
**************************************************************
*               DC PARAMETERS 
**************************************************************
+is      = '1.604e-017*isp3'      subs    = 1               update  = 0               rb      = '115.2*rbp3'         
+re      = '4.049*rep3'           irb     = 0.0001541       rc      = '10*rcp3'              rbm     = '1*rbmp3'             
+bf      = '3.067*bfp3'           nf      = '1.005*nfp3'           vaf     = 180             ikf     = 0.0009918     
+ise     = 1.78e-017       ne      = 1.233           ns      = 1               br      = 0.008874      
+nr      = 0.989           var     = 34.8            ikr     = 6.923e-005      nkf     = 0.4346        
+isc     = 1.78e-017       nc      = 1.013         
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+xtb     = 0               xti     = 3               eg      = 1.18            ctc     = 0.00287       
+cte     = 0.001012        tlev    = 1               tlevc   = 1               tnf1    = 0.0001616     
+tnr1    = -8.854e-005     tne1    = 0.000228        tbf1    = 0.004964        tbr1    = -0.001375     
+tikf1   = -0.005844       tikr1   = 0.0006188       trb1    = -0.004767       tnf2    = 2e-007        
+tbf2    = 1.827e-006      tikf2   = 1.848e-005      trb2    = 4.752e-005    
+tvjc    = 3.12e-3	       tvje    = 2.034e-3 

.model  pnp5_3  pnp  level = 1
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cjc     = '3.65e-14*cjcp3'      cje     = '2.95e-14*cjep3'          mjc     = 0.5            mje     = 0.3757         
+vjc     = 0.6	          vje     = 0.7405   	     
**************************************************************
*               Noise PARAMETERS 
**************************************************************
**************************************************************
*               DC PARAMETERS 
**************************************************************
+is      = '4.282e-018*isp3'      subs    = 1               update  = 0               rb      = '142.4*rbp3'          
+re      = '4.36*rep3'            irb     = 0.0001913       rc      = '10*rcp3'              rbm     = '1*rbmp3'             
+bf      = '2.978*bfp3'           nf      = '1.005*nfp3'           vaf     = 164             ikf     = 0.0006166     
+ise     = 1.005e-017      ne      = 1.298           ns      = 1               br      = 0.0038        
+nr      = 0.9765          var     = 34.8            ikr     = 4.646e-005      nkf     = 0.4233        
+isc     = 1.005e-017      nc      = 0.9398        
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+xtb     = 0               xti     = 3               eg      = 1.18            ctc     = 0.00287       
+cte     = 0.001012        tlev    = 1               tlevc   = 1               tnf1    = 0.0001172     
+tnr1    = -0.00036        tne1    = 0               tbf1    = 0.005142        tbr1    = 0.00324       
+tikf1   = -0.003727       tikr1   = 0.0006188       trb1    = -0.002401       tnf2    = 2e-007        
+tbf2    = 4.226e-006      tikf2   = 0               trb2    = 1.958e-005   
+tvjc    = 3.12e-3	       tvje    = 2.034e-3      

.model  pnp2_3  pnp  level = 1
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25            
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cjc     = '2.37e-14*cjcp3'      cje     = '5.74e-15*cjep3'          mjc     = 0.5            mje     = 0.3757         
+vjc     = 0.6	          vje     = 0.7405   	    
**************************************************************
*               Noise PARAMETERS 
**************************************************************
**************************************************************
*               DC PARAMETERS 
**************************************************************
+is      = '8.981e-019*isp3'      subs    = 1               update  = 0               rb      = '237.3*rbp3'          
+re      = '1.329*rep3'           irb     = 0.0003354       rc      = '10*rcp3'              rbm     = '1*rbmp3'             
+bf      = '2.822*bfp3'           nf      = '1.005*nfp3'           vaf     = 387             ikf     = 0.0002765     
+ise     = 1.78e-017       ne      = 1.491           ns      = 1               br      = 0.001161      
+nr      = 0.98            var     = 26.8            ikr     = 0.0001          nkf     = 0.4052        
+isc     = 1.78e-017       nc      = 0.9536        
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+xtb     = 0               xti     = 3               eg      = 1.18            ctc     = 0.00287       
+cte     = 0.001012        tlev    = 1               tlevc   = 1               tnf1    = 0.00015       
+tnr1    = 0               tne1    = 0               tnc1    = -0.0002646      tbf1    = 0.005721      
+tbr1    = 0.0062          tvaf1   = -0.00805        tvar1   = 0.005           tikf1   = -0.007        
+tikr1   = 0.0006188       trb1    = -0.0009112      tnf2    = 0               tnr2    = 0             
+tnc2    = 1.2e-006        tbf2    = 7.88e-006       tbr2    = 0               tvaf2   = 0             
+tvar2   = 0               tikf2   = 2.4e-005        trb2    = 4.22e-006  
+tvjc    = 3.12e-3	       tvje    = 2.034e-3 
*
.ENDL BIP3

.LIB DIO
********************************************************
*                   1.8V N+/Pwell Diode                *
********************************************************    

.model  ndio  d  level = 3
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25         
**************************************************************
*               DC PARAMETERS 
**************************************************************
+js      = 3.234e-007   jsw     = 6.7e-013     ik      = 1e+010       vb      = 11.54      
+ibv     = 0.001        ikr     = 1e+010       n       = 1.036        rs      = 1.0e-010 
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cj      = 0.001012     cjp     = 1.94e-010    pb      = 0.6302       php     = 0.6        
+fcs     = 0            mj      = 0.3494       mjsw    = 0.1616       fc      = 0          
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+tlev    = 1            tlevc   = 1            trs     = 0.00162      tcv     = -0.00103   
+xti     = 3            cta     = 0.00105      ctp     = 0.0004625    eg      = 1.18       
+tpb     = 0.001636     tphp    = 0.000526   

********************************************************
*                   1.8V P+/Nwell Diode                *
********************************************************

.model  pdio  d  level = 3
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25         
**************************************************************
*               DC PARAMETERS 
**************************************************************
+js      = 2.74e-007   jsw     = 5.6e-013     ik      = 1e+010       vb      = 10.44      
+ibv     = 0.001        ikr     = 1e+010       n       = 1.036        rs      = 1.0e-010  
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cj      = 0.00107      cjp     = 2.36e-010    pb      = 0.7881       php     = 0.738      
+fcs     = 0            mj      = 0.4177       mjsw    = 0.268        fc      = 0          
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+tlev    = 1            tlevc   = 1            trs     = 0.00013      tcv     = -0.00095  
+xti     = 3            cta     = 0.001      ctp     = 0.0005    eg      = 1.18       
+tpb     = 0.002     tphp    = 0.002   

********************************************************
*                   1.8V NW/Psub Diode                 *
********************************************************
.model  nwdio  d  level = 3
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25         
**************************************************************
*               DC PARAMETERS 
**************************************************************
+js      = 6.32e-007   jsw     = 8e-013     ik      = 1e+010       vb      = 14.5      
+ibv     = 0.001        ikr     = 1e+010       n       = 1.036        rs      = 1.0e-010  
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cj      = 0.00012      cjp     = 5.0e-010    pb      = 0.6       php     = 0.6      
+fcs     = 0            mj      = 0.5       mjsw    = 0.2        fc      = 0          
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+tlev    = 1            tlevc   = 1            trs     = 0.00112      tcv     = -0.00091  
+xti     = 3            cta     = 0.00287      ctp     = 0.00211    eg      = 1.18       
+tpb     = 0.00312     tphp    = 0.00312
*
.ENDL DIO            
*
.LIB DIO3
********************************************************
*                   3.3V N+/Pwell Diode                *
********************************************************
.model  ndio3  d  level = 3
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25         
**************************************************************
*               DC PARAMETERS 
**************************************************************
+js      = 3.65e-007   jsw     = 4e-013     ik      = 1e+010       vb      = 10.73      
+ibv     = 0.001        ikr     = 1e+010       n       = 1.036        rs      = 1.0e-010 
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cj      = 0.000886     cjp     = 2.38e-010    pb      = 0.6384       php     = 0.6        
+fcs     = 0            mj      = 0.3097       mjsw    = 0.1211       fc      = 0          
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+tlev    = 1            tlevc   = 1            trs     = 0.00155      tcv     = -0.000952   
+xti     = 3            cta     = 0.00101      ctp     = 0.0005211    eg      = 1.18       
+tpb     = 0.001986     tphp    = 0.001986   

********************************************************
*                   3.3V P+/Nwell Diode                *
********************************************************
.model  pdio3  d  level = 3
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25         
**************************************************************
*               DC PARAMETERS 
**************************************************************
+js      = 1.86e-007   jsw     = 9.5e-013     ik      = 1e+010       vb      = 10.25     
+ibv     = 0.001        ikr     = 1e+010       n       = 1.036        rs      = 1.0e-010 
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cj      = 0.00101      cjp     = 2.12e-010    pb      = 0.7405       php     = 0.6      
+fcs     = 0            mj      = 0.3757       mjsw    = 0.1672        fc      = 0          
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+tlev    = 1            tlevc   = 1            trs     = 0.00013      tcv     = -0.00085 
+xti     = 3            cta     = 0.001012      ctp     = 0.00065    eg      = 1.18       
+tpb     = 0.002034     tphp    = 0.002034   
*
********************************************************
*                   3.3V NW/Psub Diode                 *
********************************************************
.model  nwdio3  d  level = 3
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25         
**************************************************************
*               DC PARAMETERS 
**************************************************************
+js      = 6.32e-007   jsw     = 8e-013     ik      = 1e+010       vb      = 14.5      
+ibv     = 0.001        ikr     = 1e+010       n       = 1.036        rs      = 1.0e-010  
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cj      = 0.00012      cjp     = 5.0e-010    pb      = 0.6       php     = 0.6      
+fcs     = 0            mj      = 0.5       mjsw    = 0.2        fc      = 0          
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+tlev    = 1            tlevc   = 1            trs     = 0.00112      tcv     = -0.00091  
+xti     = 3            cta     = 0.00287      ctp     = 0.00211    eg      = 1.18       
+tpb     = 0.00312     tphp    = 0.00312

***************************************************************
*                    3.3V ESD diode
***************************************************************
.MODEL edio3 d  LEVEL  = 3
*******************************************
+ CJ     = 1.352E-3     PB     = 0.7
+ MJ     = 0.354       TREF   = 25
+ FC     = 0               FCS    = 0 
*
.ENDL DIO3
*
.LIB DIO_DNW
*********************************************
*        DNW/ Psub diode model         
*********************************************
.model  dnwpsub  d  level = 3
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25         
**************************************************************
*               DC PARAMETERS 
**************************************************************
+js      = 1.33e-007   jsw     = 1.16e-012     ik      = 1e+010       vb      = 14.62     
+ibv     = 0.001        ikr     = 1e+010       n       = 1.036        rs      = 1.0e-010 
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cj      = 0.000138      cjp     = 1.072e-09    pb      = 0.78       php     = 0.6      
+fcs     = 0            mj      = 0.462       mjsw    = 0.35        fc      = 0          
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+tlev    = 1            tlevc   = 1            trs     = 0.000352      tcv     = -0.000961 
+xti     = 3            cta     = 0.00238      ctp     = 0.00172    eg      = 1.18       
+tpb     = 0.002634     tphp    = 0.002634   
*********************************************
*        PW/DNW diode model         
*********************************************
.model  pwdnw  d  level = 3
**************************************************************
*               GENERAL PARAMETERS 
**************************************************************
+tref    = 25         
**************************************************************
*               DC PARAMETERS 
**************************************************************
+js      = 1.11e-006   jsw     = 8e-013     ik      = 1e+010       vb      = 14.32      
+ibv     = 0.001        ikr     = 1e+010       n       = 1.036        rs      = 1.0e-010  
**************************************************************
*               CAPACITANCE PARAMETERS 
**************************************************************
+cj      = 0.000702      cjp     = 5.26e-010    pb      = 0.6       php     = 0.6      
+fcs     = 0            mj      = 0.35       mjsw    = 0.2        fc      = 0          
**************************************************************
*               TEMPERATURE PARAMETERS 
**************************************************************
+tlev    = 1            tlevc   = 1            trs     = 0.00294      tcv     = -0.00098  
+xti     = 3            cta     = 0.0012      ctp     = 0.00146    eg      = 1.18       
+tpb     = 0.00131     tphp    = 0.00131
*
.ENDL DIO_DNW

********************************
*                              *
*   0.18um  resistor model     *
*                              *
********************************
*
.LIB RES_TT
.param
+r_rndiffs  = 6.5     r_rpdiffs = 7.5     r_rndiffu = 57.4      r_rpdiffu  = 124.6     
+r_rnpolys  = 8       r_rppolys = 8       r_rnpolyu = 284.9     r_rppolyu  = 315.2 
+r_rnwdiff  = 418.9   r_rnwsti  = 954.4   r_hrpolyu = 1100  
+r_rm1      = 0.078   r_rm2     = 0.078   r_rm3     = 0.078     r_rm4      = 0.078     
+r_rm5      = 0.078   r_rm6     = 0.036       
.lib 'gd018.l' RES 
.ENDL RES_TT
*
.LIB RES_SS
.param
+r_rndiffs    = '6.5 +2.5'   r_rpdiffs  = '7.5 +3'    r_rndiffu  = '57.4 +6'    r_rpdiffu  = ' 124.6  +18'
+r_rnpolys    = '8 +2'     r_rppolys = '8  +2.5'   r_rnpolyu = ' 284.9  +44.3'    r_rppolyu = '  315.2  +46.5' 
+r_rnwdiff = '418.9  +100'      r_rnwsti = '954.4  +135'    r_hrpolyu = '1100 +165'
+r_rm1      = '0.078+0.023'   r_rm2    = '0.078+0.023'  r_rm3   = '0.078+0.023'     r_rm4    = '0.078+0.023'
+r_rm5      = '0.078+0.023'  r_rm6      = '0.036+0.009'       
.lib 'gd018.l' RES
.ENDL RES_SS
*
.LIB RES_FF
.param
+r_rndiffs    = '6.5 -2.5'   r_rpdiffs  = '7.5 -3'    r_rndiffu  = '57.4 - 6'    r_rpdiffu  = ' 124.6  -18'
+r_rnpolys    = '8 -2'     r_rppolys = '8  -2.5'   r_rnpolyu = ' 284.9  -44.3'    r_rppolyu = '  315.2 -46.5' 
+r_rnwdiff = '418.9  -100'      r_rnwsti = '954.4   -135'    r_hrpolyu = '1100 -165'
+r_rm1      = '0.078-0.023'   r_rm2    = '0.078-0.023'  r_rm3   = '0.078-0.023'     r_rm4    = '0.078-0.023'
+r_rm5      = '0.078-0.023'  r_rm6      = '0.036-0.009'      
.lib 'gd018.l' RES
.ENDL RES_FF
*

.lib RES

.subckt rnpolyu n1 n2 l=length w=width
.param rp=r_rnpolyu  rend0=88.2u r0=10.4 dw=-0.081u 
.param pt='temper'
.param vc1=1.114e-4    vc2=-1.990e-3
.param tcp1=-1.232e-3  tcp2=2.035e-6
.param tce1=1.657e-3   tce2=1.390e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
r01 n1 1 'r0/2'
rend1 1 2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))'
rend2 3 4 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
r02 4 n2 'r0/2'
.ends rnpolyu

.subckt rppolyu n1 n2  l=length w=width
.param rp=r_rppolyu  rend0=227.1u r0=8.7 dw=-0.049u 
.param pt='temper'
.param vc1=3.658e-5  vc2=-3.426e-4
.param tcp1=-1.237e-4 tcp2=0.6e-6
.param tce1=-9.234e-4   tce2=-1.69e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
r01 n1 1 'r0/2'
rend1 1 2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))'
rend2 3 4 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
r02 4 n2 'r0/2'
.ends rppolyu

.subckt rnpolys n1 n2 l=length w=width
.param rsh=r_rnpolys dw=-0.06u  tc1=2.97e-3  tc2=2.72e-7   vc1=1.28e-3 vc2=8.96e-3 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rnpolys

.subckt rppolys n1 n2 l=length w=width
.param rsh=r_rppolys dw=-0.03u  tc1=2.92e-3  tc2=3.85e-7   vc1=-7.50e-4 vc2=8.03e-3 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rppolys

.subckt hrpolyu n1 n2 l=length w=width
.param rsh=r_hrpolyu dw=0.03u  tc1=-9.76e-4 tc2=2.28e-6  vc1=-3.37e-4 vc2=-1.18e-5 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends hrpolyu

.subckt rndiffu n1 n2 l=length w=width
.param rp=r_rndiffu  rend0=71.6u r0=4.9 dw=0.088u
.param pt='temper'
.param vc1=4.430e-4   vc2=1.345e-3
.param tcp1=1.432e-3   tcp2=0.90e-6
.param tce1=2.161e-3 tce2=-5.29e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
r01 n1 1 'r0/2'
rend1 1 2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))'
rend2 3 4 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
r02 4 n2 'r0/2'
.ends rndiffu

.subckt rpdiffu n1 n2  l=length w=width
.param rp=r_rpdiffu  rend0=119.8u r0=7.1 dw= 0.0051u 
.param pt='temper'
.param vc1=1.885e-4  vc2=5.917e-4
.param tcp1=1.402e-3 tcp2=0.66e-6
.param tce1=9.766e-4   tce2=-7.33e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
r01 n1 1 'r0/2'
rend1 1 2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))'
rend2 3 4 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
r02 4 n2 'r0/2'
.ends rpdiffu

.subckt rndiffs n1 n2 l=length w=width
.param rsh=r_rndiffs dw=-0.08u  tc1=3.12e-3  tc2=7.47e-8   vc1=7.18e-5 vc2=1.49e-3 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rndiffs

.subckt rpdiffs n1 n2 l=length w=width
.param rsh=r_rpdiffs dw=-0.06u  tc1=3.075e-3  tc2=3.98e-7   vc1=-2.38e-4 vc2=1.26e-3 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rpdiffs


.subckt rnwsti n1 n2  l=length w=width
.param rp=r_rnwsti  rend0=659.9u dw=-0.270u 
.param pt='temper'
.param vc1=2.016e-2  vc2=-3.148e-4
.param tcp1=2.981e-3 tcp2=9.337e-6
.param tce1=4.175e-3   tce2=9.737e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
rend1 n1 1 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 1 2 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))'
rend2 2 n2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
.ends rnwsti

.subckt rnwdiff n1 n2 l=length w=width
.param rp=r_rnwdiff  rend0=133.3u  dw=-0.159u 
.param pt='temper'
.param vc1=1.554e-2  vc2=-1.555e-5
.param tcp1=2.887e-3 tcp2=8.751e-6
.param tce1=2.217e-3   tce2=4.644e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
rend1 n1 1 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 1 2 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))'
rend2 2 n2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
.ends rnwdiff

.subckt rnpolyu3 n1 n2 sub l=length w=width
.param rp=r_rnpolyu  rend0=88.2u r0=10.4 dw=-0.081u ca=9.866e-5  cp=5.533e-11
.param pt='temper'
.param vc1=1.114e-4    vc2=-1.990e-3
.param tcp1=-1.232e-3  tcp2=2.035e-6
.param tce1=1.657e-3   tce2=1.390e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
r01 n1 1 'r0/2'
rend1 1 2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp2 3 4 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rend2 4 5 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
r02 5 n2 'r0/2'
c1 n1 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
c2 3 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/2'
c3 n2 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
.ends rnpolyu3

.subckt rppolyu3 n1 n2 sub l=length w=width
.param rp=r_rppolyu  rend0=227.1u r0=8.7 dw=-0.049u ca=9.866e-5  cp=5.5327e-11
.param pt='temper'
.param vc1=3.658e-5  vc2=-3.426e-4
.param tcp1=-1.237e-4 tcp2=0.6e-6
.param tce1=-9.234e-4   tce2=-1.69e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
r01 n1 1 'r0/2'
rend1 1 2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp2 3 4 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rend2 4 5 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
r02 5 n2 'r0/2'
c1 n1 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
c2 3 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/2'
c3 n2 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
.ends rppolyu3

.subckt rndiffu3 n1 n2 sub l=length w=width
.param rp=r_rndiffu  rend0=71.6u r0=4.9 dw=0.088u ca=0.001012  cp=1.94e-10
.param pt='temper'
.param vc1=4.430e-4   vc2=1.345e-3
.param tcp1=1.432e-3   tcp2=0.90e-6
.param tce1=2.161e-3 tce2=-5.29e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
r01 n1 1 'r0/2'
rend1 1 2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp2 3 4 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rend2 4 5 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
r02 5 n2 'r0/2'
c1 n1 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
c2 3 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/2'
c3 n2 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
.ends rndiffu3

.subckt rpdiffu3 n1 n2 sub l=length w=width
.param rp=r_rpdiffu  rend0=119.8u r0=7.1 dw= 0.0051u ca=0.00107  cp=2.36e-10
.param pt='temper'
.param vc1=1.885e-4  vc2=5.917e-4
.param tcp1=1.402e-3 tcp2=0.66e-6
.param tce1=9.766e-4   tce2=-7.33e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
r01 n1 1 'r0/2'
rend1 1 2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp2 3 4 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rend2 4 5 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
r02 5 n2 'r0/2'
c1 n1 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
c2 3 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/2'
c3 n2 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
.ends rpdiffu3

.subckt rnwsti3 n1 n2 sub l=length w=width
.param rp=r_rnwsti  rend0=659.9u dw=-0.270u ca=1.2e-4  cp=5e-10
.param pt='temper'
.param vc1=2.016e-2  vc2=-3.148e-4
.param tcp1=2.981e-3 tcp2=9.337e-6
.param tce1=4.175e-3   tce2=9.737e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
rend1 n1 1 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 1 2 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp2 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rend2 3 n2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
c1 n1 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
c2 2 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/2'
c3 n2 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
.ends rnwsti3

.subckt rnwdiff3 n1 n2 sub l=length w=width
.param rp=r_rnwdiff  rend0=133.3u  dw=-0.159u ca=1.2e-4  cp=5e-10
.param pt='temper'
.param vc1=1.554e-2  vc2=-1.555e-5
.param tcp1=2.887e-3 tcp2=8.751e-6
.param tce1=2.217e-3   tce2=4.644e-6
.param tfacp='1.0+tcp1*(pt-25)+tcp2*(pt-25)*(pt-25)'
.param tface='1.0+tce1*(pt-25)+tce2*(pt-25)*(pt-25)'
rend1 n1 1 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp1 1 2 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rp2 2 3 '(rp*l/(w+dw)*tfacp*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
rend2 3 n2 '(rend0/(w+dw)*tface*(1.0+vc1*abs(v(n1,n2))+vc2*v(n1,n2)*v(n1,n2)))/2'
c1 n1 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
c2 2 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/2'
c3 n2 sub '(ca*l*(w+dw)+cp*(l+w+dw)*2)/4'
.ends rnwdiff3

.subckt rm1 n1 n2 l=length w=width
.param rsh=r_rm1 dw=0.02u  tc1=3.28e-3  tc2=-1e-6   vc1=0 vc2=0 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rm1

.subckt rm2 n1 n2 l=length w=width
.param rsh=r_rm2 dw=0.02u  tc1=3.28e-3  tc2=-1e-6   vc1=0 vc2=0 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rm2

.subckt rm3 n1 n2 l=length w=width
.param rsh=r_rm3 dw=0.02u  tc1=3.28e-3  tc2=-1e-6   vc1=0 vc2=0 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rm3

.subckt rm4 n1 n2 l=length w=width
.param rsh=r_rm4 dw=0.02u  tc1=3.28e-3  tc2=-1e-6   vc1=0 vc2=0 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rm4

.subckt rm5 n1 n2 l=length w=width
.param rsh=r_rm5 dw=0.02u  tc1=3.28e-3  tc2=-1e-6   vc1=0 vc2=0 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rm5

.subckt rm6 n1 n2 l=length w=width
.param rsh=r_rm6 dw=0.04u  tc1=3.42e-3  tc2=-1.11e-7   vc1=0 vc2=0 pt='temper'
.param tfac='1.0+tc1*(pt-25.0)+tc2*(pt-25.0)*(pt-25.0)'
r1 n1 n2 'rsh*l/(w-dw)*(1+vc1*abs(v(n2,n1))+vc2*v(n2,n1)*v(n2,n1))*tfac'
.ends rm6

.ENDL RES

********************************************************************
.LIB cap_TT
.param c_areap = 1
.param c_fp = 1
.lib 'gd018.l' cap
.ENDL cap_TT


.LIB cap_FF
.param c_areap = 0.85
.param c_fp = 0.85
.lib 'gd018.l' cap
.ENDL cap_FF


.LIB cap_SS
.param c_areap = 1.15
.param c_fp = 1.15
.lib 'gd018.l' cap
.ENDL cap_SS


.LIB cap
.subckt mim_cap  1 0 c_length=1u c_width=1u
.param c_area='9.67e-4*c_areap'
.param c_f='7.1e-11*c_fp'
.param c_tc1=2.94e-5
.param c_tc2=0
.param c_vc1=1.191e-5
.param c_vc2=3.71e-6
.param c_A='c_length*c_width'
.param c_P='2*(c_length+c_width)'
.param c_c0='(c_area*c_A+c_f*c_P)*(1+c_tc1*(temper-25)+c_tc2*(temper-25)*(temper-25))'
cap 1 0 c='c_c0*(1+c_vc1*v(1,0)+c_vc2*v(1,0)*v(1,0))'
.ends mim_cap
.ENDL cap


