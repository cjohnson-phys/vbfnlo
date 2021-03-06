C
C modified from toww.F by Jessica Frank
C Only resonant Higgs diagrams are included.
C These routines are called for process 195 (Sp2jj_WW) with a Higgs instead of
C a spin-2 resonanance if spin2=false is set in vbfnlo.dat.
C
      subroutine AAtoWW_Hres(Q1,Q2,P,aa)
C  
C FOR PROCESS : a a -> e+ ve mu- vm~  
C  
      IMPLICIT NONE
      REAL*8 Q1(0:3), Q2(0:3), P(0:3,3:6)
      complex*16 aa(0:3,0:3)
      INTEGER MU, NU

      DO MU = 0,3
         DO NU = 0,3
       AA(MU,NU)  = 0.0d0
         enddo
      enddo
      END


      subroutine AZtoWW_Hres(Q1,Q2,P,az)

C FOR PROCESS : a z -> e+ ve mu- vm~  
C  
      IMPLICIT NONE
      REAL*8 Q1(0:3), Q2(0:3), P(0:3,3:6)
      complex*16 az(0:3,0:3)
      INTEGER MU, NU

      DO MU = 0,3
         DO NU = 0,3
        AZ(MU,NU)  = 0.0d0 
         ENDDO
      ENDDO
      END
       
       
      subroutine ZZtoWW_Hres(Q1,Q2,P,zz)
C  
C Generated by MadGraph II Version 3.0. Updated 02/19/04                
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : z z -> e+ ve mu- vm~  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS
      PARAMETER (NGRAPHS=  32) 
      INTEGER    NWAVEFUNCS
      PARAMETER (NWAVEFUNCS=  40) 
      REAL*8     ZERO
      PARAMETER (ZERO=0D0)
C  
C ARGUMENTS 
C  
      REAL*8 Q1(0:3), Q2(0:3), P(0:3,3:6)
      complex*16 zz(0:3,0:3)
C  
C LOCAL VARIABLES 
C  
      INTEGER I, MU, NU
      COMPLEX*16 AMP(NGRAPHS)
      COMPLEX*16 W(6,NWAVEFUNCS)
      INTEGER NHEL(3:6), ihel
      DATA (NHEL(IHEL),IHEL=3,6) / +1,-1,-1,+1/
      Save NHEL
c  lepton spinors and W+- polarization vectors
#include "tensor.inc"

      logical lswitch
      parameter (lswitch=.true.)
C  
C GLOBAL VARIABLES
C  
#include "VBFNLO/utilities/coupl.inc"
C                                                                          
C ----------
C BEGIN CODE
C ----------
      if (lswitch) then      ! read in lepton an W states from common block
         do i=1,6
            w(i,3) = wep(i)
            w(i,4) = wve(i)
            w(i,5) = wmu(i)
            w(i,6) = wvm(i)
            w(i,34) = wp(i)
            w(i,15) = wm(i)
         enddo
      endif

      DO MU = 0,3
         DO NU = 0,3
      CALL VCARTX(Q1(0),ZMASS ,Zwidth, MU,-1,W(1,1   ))        
      CALL VCARTX(Q2(0),ZMASS ,Zwidth, NU,-1,W(1,2   ))
      if (.not.lswitch) then 
         CALL IXXXXX(P(0,4   ),ZERO ,NHEL(3   ),-1,W(1,3   ))        
         CALL OXXXXX(P(0,3   ),ZERO ,NHEL(4   ),+1,W(1,4   ))        
         CALL OXXXXX(P(0,6   ),ZERO ,NHEL(5   ),+1,W(1,5   ))        
         CALL IXXXXX(P(0,5   ),ZERO ,NHEL(6   ),-1,W(1,6   ))
      endif        

      if (.not.lswitch)
     &   CALL JIOXXX(W(1,3),W(1,4),GWF ,WMASS,WWIDTH  ,W(1,34))        
      CALL HVVXXX(W(1,1   ),W(1,2   ),GZZH ,HMASS   ,HWIDTH  ,W(1,39))
      CALL JVSXXX(W(1,34  ),W(1,39  ),GWWH ,WMASS   ,WWIDTH  ,W(1,40))
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,40  ),GWF ,AMP(31  ))            

      ZZ(MU,NU)  = -AMP(  31)

          ENDDO
      ENDDO

      END


      subroutine WWtoWW_Hres(Q1,Q2,P,ww)
C  
C Generated by MadGraph II Version 3.0. Updated 02/19/04                
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : w- w+ -> e+ ve mu- vm~  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS
      PARAMETER (NGRAPHS=  28) 
      INTEGER    NWAVEFUNCS
      PARAMETER (NWAVEFUNCS=  40)
      REAL*8     ZERO
      PARAMETER (ZERO=0D0)
C  
C ARGUMENTS 
C  
      REAL*8 Q1(0:3), Q2(0:3), P(0:3,3:6)
      complex*16 ww(0:3,0:3)
C  
C LOCAL VARIABLES 
C  
      INTEGER I, MU, NU
      COMPLEX*16 AMP(NGRAPHS)
      COMPLEX*16 W(6,NWAVEFUNCS)
      INTEGER NHEL(3:6), ihel
      DATA (NHEL(IHEL),IHEL=3,6) / +1,-1,-1,+1/
      Save NHEL
c  lepton spinors and W+- polarization vectors
#include "tensor.inc"

      logical lswitch
      parameter (lswitch=.true.)
C  
C GLOBAL VARIABLES
C  
#include "VBFNLO/utilities/coupl.inc"
C                                                                          
C ----------
C BEGIN CODE
C ----------
      if (lswitch) then      ! read in lepton an W states from common block
         do i=1,6
            w(i,3) = wep(i)
            w(i,4) = wve(i)
            w(i,5) = wmu(i)
            w(i,6) = wvm(i)
            w(i,21) = wp(i)
            w(i,18) = wm(i)
         enddo
      endif

      DO MU = 0,3
         DO NU = 0,3
      CALL VCARTX(Q1(0),wMASS ,wwidth, MU,-1,W(1,1   ))        
      CALL VCARTX(Q2(0),wMASS ,wwidth, NU,-1,W(1,2   )) 
      if (.not.lswitch) then
         CALL IXXXXX(P(0,4   ),ZERO ,NHEL(3   ),-1,W(1,3   ))        
         CALL OXXXXX(P(0,3   ),ZERO ,NHEL(4   ),+1,W(1,4   ))        
         CALL OXXXXX(P(0,6   ),ZERO ,NHEL(5   ),+1,W(1,5   ))        
         CALL IXXXXX(P(0,5   ),ZERO ,NHEL(6   ),-1,W(1,6   ))  
      endif      
      if (.not.lswitch)
     &   CALL JIOXXX(W(1,3),W(1,4),GWF ,WMASS,WWIDTH,W(1,21))    

      CALL HVVXXX(W(1,2   ),W(1,1   ),GWWH ,HMASS   ,HWIDTH  ,W(1,37))
      CALL JVSXXX(W(1,21  ),W(1,37  ),GWWH ,WMASS   ,WWIDTH  ,W(1,38))
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,38  ),GWF ,AMP(24  ))            

      WW(MU,NU)  = -AMP(  24)

          ENDDO
      ENDDO

      END
