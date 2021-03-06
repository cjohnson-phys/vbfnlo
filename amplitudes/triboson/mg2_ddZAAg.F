      SUBROUTINE SDD_ZAAG(PBAR,fsign,ANS)
C  
C Generated by MadGraph II                                              
C MadGraph StandAlone Version
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : d d~ -> e- e+ a a g  
C  
C Crossing   1 is d d~ -> e- e+ a a g  
      IMPLICIT NONE
C  
C CONSTANTS
C  
#include "genps.inc"
      INTEGER                 NCOMB,     NCROSS         
      PARAMETER (             NCOMB= 128, NCROSS=  1)
      INTEGER    THEL
      PARAMETER (THEL=NCOMB*NCROSS)
C  
C ARGUMENTS 
C  
      DOUBLE PRECISION PBAR(0:3,NEXTERNAL),ANS(NCROSS)
      integer fsign(NEXTERNAL)
C  
C LOCAL VARIABLES 
C  
      INTEGER NHEL(NEXTERNAL,NCOMB),NTRY
      DOUBLE PRECISION T                 !,P(0:3,NEXTERNAL)
      DOUBLE PRECISION DD_ZAAG
      INTEGER IHEL,IDEN(NCROSS) !,IC(NEXTERNAL,NCROSS)
      INTEGER IPROC,I           !JC(NEXTERNAL), I
      LOGICAL GOODHEL(NCOMB,NCROSS)
      INTEGER NGRAPHS
      DOUBLE PRECISION hwgt, xtot, xtry, xrej, xr, yfrac(0:ncomb)
      INTEGER idum, ngood, igood(ncomb), jhel, j
      LOGICAL warned
      REAL     xran1
      EXTERNAL xran1
C  
C GLOBAL VARIABLES
C  
      Double Precision amp2(maxamps), jamp2(0:maxamps)
      common/to_ampstri513/  amp2,       jamp2

      character*79         hel_buff
      common/to_helicity/  hel_buff

      integer          isum_hel
      logical                    multi_channel
      common/to_matrix/isum_hel, multi_channel
      INTEGER MAPCONFIG(0:LMAXCONFIGS), ICONFIG
      common/to_mconfigs/mapconfig, iconfig
      DATA NTRY,IDUM /0,-1/
      DATA xtry, xrej, ngood /0,0,0/
c      DATA warned, isum_hel/.false.,0/
      DATA warned /.false./
c      DATA multi_channel/.true./
      SAVE yfrac, igood, IDUM, jhel
      DATA NGRAPHS /   62/          
      DATA jamp2(0) /   1/          
      DATA GOODHEL/THEL*.FALSE./
      DATA (NHEL(IHEL,   1),IHEL=1, 7) /-1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,   2),IHEL=1, 7) /-1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,   3),IHEL=1, 7) /-1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,   4),IHEL=1, 7) /-1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,   5),IHEL=1, 7) /-1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,   6),IHEL=1, 7) /-1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,   7),IHEL=1, 7) /-1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,   8),IHEL=1, 7) /-1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,   9),IHEL=1, 7) /-1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  10),IHEL=1, 7) /-1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  11),IHEL=1, 7) /-1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  12),IHEL=1, 7) /-1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  13),IHEL=1, 7) /-1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  14),IHEL=1, 7) /-1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  15),IHEL=1, 7) /-1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  16),IHEL=1, 7) /-1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  17),IHEL=1, 7) /-1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  18),IHEL=1, 7) /-1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  19),IHEL=1, 7) /-1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  20),IHEL=1, 7) /-1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  21),IHEL=1, 7) /-1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  22),IHEL=1, 7) /-1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  23),IHEL=1, 7) /-1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  24),IHEL=1, 7) /-1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  25),IHEL=1, 7) /-1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  26),IHEL=1, 7) /-1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  27),IHEL=1, 7) /-1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  28),IHEL=1, 7) /-1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  29),IHEL=1, 7) /-1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  30),IHEL=1, 7) /-1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  31),IHEL=1, 7) /-1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  32),IHEL=1, 7) /-1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  33),IHEL=1, 7) /-1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  34),IHEL=1, 7) /-1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  35),IHEL=1, 7) /-1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  36),IHEL=1, 7) /-1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  37),IHEL=1, 7) /-1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  38),IHEL=1, 7) /-1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  39),IHEL=1, 7) /-1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  40),IHEL=1, 7) /-1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  41),IHEL=1, 7) /-1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  42),IHEL=1, 7) /-1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  43),IHEL=1, 7) /-1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  44),IHEL=1, 7) /-1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  45),IHEL=1, 7) /-1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  46),IHEL=1, 7) /-1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  47),IHEL=1, 7) /-1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  48),IHEL=1, 7) /-1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  49),IHEL=1, 7) /-1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  50),IHEL=1, 7) /-1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  51),IHEL=1, 7) /-1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  52),IHEL=1, 7) /-1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  53),IHEL=1, 7) /-1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  54),IHEL=1, 7) /-1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  55),IHEL=1, 7) /-1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  56),IHEL=1, 7) /-1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  57),IHEL=1, 7) /-1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  58),IHEL=1, 7) /-1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  59),IHEL=1, 7) /-1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  60),IHEL=1, 7) /-1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  61),IHEL=1, 7) /-1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  62),IHEL=1, 7) /-1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  63),IHEL=1, 7) /-1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  64),IHEL=1, 7) /-1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  65),IHEL=1, 7) / 1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  66),IHEL=1, 7) / 1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  67),IHEL=1, 7) / 1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  68),IHEL=1, 7) / 1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  69),IHEL=1, 7) / 1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  70),IHEL=1, 7) / 1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  71),IHEL=1, 7) / 1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  72),IHEL=1, 7) / 1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  73),IHEL=1, 7) / 1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  74),IHEL=1, 7) / 1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  75),IHEL=1, 7) / 1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  76),IHEL=1, 7) / 1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  77),IHEL=1, 7) / 1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  78),IHEL=1, 7) / 1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  79),IHEL=1, 7) / 1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  80),IHEL=1, 7) / 1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  81),IHEL=1, 7) / 1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  82),IHEL=1, 7) / 1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  83),IHEL=1, 7) / 1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  84),IHEL=1, 7) / 1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  85),IHEL=1, 7) / 1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  86),IHEL=1, 7) / 1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  87),IHEL=1, 7) / 1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  88),IHEL=1, 7) / 1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  89),IHEL=1, 7) / 1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  90),IHEL=1, 7) / 1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  91),IHEL=1, 7) / 1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  92),IHEL=1, 7) / 1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  93),IHEL=1, 7) / 1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  94),IHEL=1, 7) / 1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  95),IHEL=1, 7) / 1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  96),IHEL=1, 7) / 1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  97),IHEL=1, 7) / 1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  98),IHEL=1, 7) / 1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  99),IHEL=1, 7) / 1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 100),IHEL=1, 7) / 1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 101),IHEL=1, 7) / 1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 102),IHEL=1, 7) / 1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 103),IHEL=1, 7) / 1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 104),IHEL=1, 7) / 1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 105),IHEL=1, 7) / 1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 106),IHEL=1, 7) / 1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 107),IHEL=1, 7) / 1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 108),IHEL=1, 7) / 1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 109),IHEL=1, 7) / 1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 110),IHEL=1, 7) / 1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 111),IHEL=1, 7) / 1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 112),IHEL=1, 7) / 1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 113),IHEL=1, 7) / 1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 114),IHEL=1, 7) / 1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 115),IHEL=1, 7) / 1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 116),IHEL=1, 7) / 1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 117),IHEL=1, 7) / 1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 118),IHEL=1, 7) / 1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 119),IHEL=1, 7) / 1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 120),IHEL=1, 7) / 1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 121),IHEL=1, 7) / 1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 122),IHEL=1, 7) / 1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 123),IHEL=1, 7) / 1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 124),IHEL=1, 7) / 1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 125),IHEL=1, 7) / 1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 126),IHEL=1, 7) / 1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 127),IHEL=1, 7) / 1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 128),IHEL=1, 7) / 1, 1, 1, 1, 1, 1, 1/
c      DATA (  IC(IHEL,  1),IHEL=1, 7) / 1, 2, 3, 4, 5, 6, 7/
      DATA (IDEN(IHEL),IHEL=  1,  1) /  1/
C ----------
C BEGIN CODE
C ----------
c neu
      iproc=1
c -------
      NTRY=NTRY+1
c      DO IPROC=1,NCROSS
c      CALL SWITCHMOM(P1,P,IC(1,IPROC),JC,NEXTERNAL)
c      DO IHEL=1,NEXTERNAL
c         JC(IHEL) = +1
c      ENDDO
       
c      IF (multi_channel) THEN
c          DO IHEL=1,NGRAPHS
c              amp2(ihel)=0d0
c              jamp2(ihel)=0d0
c          ENDDO
c          DO IHEL=1,int(jamp2(0))
c              jamp2(ihel)=0d0
c          ENDDO
c      ENDIF
      ANS(IPROC) = 0D0
      write(hel_buff,'(16i5)') (0,i=1,nexternal)
      IF (ISUM_HEL .EQ. 0 .OR. NTRY .LT. 10) THEN
          DO IHEL=1,NCOMB
             IF (GOODHEL(IHEL,IPROC) .OR. NTRY .LT. 2) THEN
                 T=DD_ZAAG(PBAR ,NHEL(1,IHEL),fsign(1))            
               ANS(IPROC)=ANS(IPROC)+T
               IF (T .GT. 0D0 .AND. .NOT.    GOODHEL(IHEL,IPROC)) THEN
                   GOODHEL(IHEL,IPROC)=.TRUE.
                      NGOOD = NGOOD +1
                      IGOOD(NGOOD) = IHEL
C                WRITE(*,*) ngood,IHEL,T
               ENDIF
             ENDIF
          ENDDO
          JHEL = 1
          ISUM_HEL=MIN(ISUM_HEL,NGOOD)
      ELSE              !RANDOM HELICITY
          DO J=1,ISUM_HEL
              JHEL=JHEL+1
              IF (JHEL .GT. NGOOD) JHEL=1
              HWGT = REAL(NGOOD)/REAL(ISUM_HEL)
              IHEL = IGOOD(JHEL)
              T=DD_ZAAG(PBAR ,NHEL(1,IHEL),fsign(1))            
           ANS(IPROC)=ANS(IPROC)+T*HWGT
          ENDDO
          IF (ISUM_HEL .EQ. 1) THEN
              WRITE(HEL_BUFF,'(16i5)')(NHEL(i,IHEL),i=1,nexternal)
          ENDIF
      ENDIF
      IF (MULTI_CHANNEL) THEN
          XTOT=0D0
          DO IHEL=1,MAPCONFIG(0)
              XTOT=XTOT+AMP2(MAPCONFIG(IHEL))
      ENDDO
          ANS(IPROC)=ANS(IPROC)*AMP2(MAPCONFIG(ICONFIG))/XTOT
      ENDIF
      ANS(IPROC)=ANS(IPROC)/DBLE(IDEN(IPROC))
c      ENDDO
      END
       
       
      DOUBLE PRECISION FUNCTION DD_ZAAG(PBAR,NHEL,fsign)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : d d~ -> e- e+ a a g  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER (NGRAPHS= 120,NEIGEN=  1) 
#include "genps.inc"
#include "tensor.inc"
      INTEGER    NWAVEFUNCS     , NCOLOR
      PARAMETER (NWAVEFUNCS= 155, NCOLOR=   1) 
      DOUBLE PRECISION     ZERO
      PARAMETER (ZERO=0D0)
C  
C ARGUMENTS 
C  
      DOUBLE PRECISION PBAR(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL), fsign(NEXTERNAL)
C  
C LOCAL VARIABLES 
C  
      INTEGER I,J
      DOUBLE COMPLEX ZTEMP
      DOUBLE PRECISION DENOM(NCOLOR), CF(NCOLOR,NCOLOR)
      DOUBLE COMPLEX AMP(NGRAPHS), JAMP(NCOLOR)
      DOUBLE COMPLEX W(6,NWAVEFUNCS),WX1(6),WX2(6)

      DOUBLE COMPLEX subprocess(3)

C  
C GLOBAL VARIABLES
C  
      Double Precision amp2(maxamps), jamp2(0:maxamps)
      common/to_ampstri513/  amp2,       jamp2
#include "VBFNLO/utilities/coupl.inc"
      integer h
      common /hcount / h
C  
C COLOR DATA
C  
      DATA Denom(1  )/            1/                                       
      DATA (CF(i,1  ),i=1  ,1  ) /     4/                                  
C               T[ 2, 1, 7]                                                
C ----------
C BEGIN CODE
C ----------
      CALL IXXXXX(PBAR(0,1),ZERO ,NHEL(1)*FSIGN(1),FSIGN(1),W(1,1))        
      CALL OXXXXX(PBAR(0,2),ZERO ,NHEL(2)*FSIGN(2),FSIGN(2),W(1,2))        
      CALL OXXXXX(PBAR(0,3),ZERO ,NHEL(3)*FSIGN(3),FSIGN(3),W(1,3))        
      CALL IXXXXX(PBAR(0,4),ZERO ,NHEL(4)*FSIGN(4),FSIGN(4),W(1,4))        
      CALL VXXXXX(PBAR(0,5),ZERO ,NHEL(5)*FSIGN(5),FSIGN(5),W(1,5))        
      CALL VXXXXX(PBAR(0,6),ZERO ,NHEL(6)*FSIGN(6),FSIGN(6),W(1,6))        
      CALL VXXXXX(PBAR(0,7),ZERO ,NHEL(7)*FSIGN(7),FSIGN(7),W(1,7))        
      CALL JIOXXX(W(1,4   ),W(1,3   ),GAL ,ZERO    ,AWIDTH  ,W(1,8   ))    
      CALL FVIXXX(W(1,1   ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,9   ))     
      CALL FVOXXX(W(1,2   ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,10  ))    
      CALL FVOXXX(W(1,10  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,11  ))    
      CALL IOVXXX(W(1,9   ),W(1,11  ),W(1,6   ),GAD ,AMP(1   ))            
      CALL JIOXXX(W(1,4   ),W(1,3   ),GZL ,ZMASS   ,ZWIDTH  ,W(1,12  ))    
      CALL FVOXXX(W(1,2   ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,13  ))    
      CALL FVOXXX(W(1,13  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,14  ))    
      CALL IOVXXX(W(1,9   ),W(1,14  ),W(1,6   ),GAD ,AMP(2   ))            
      CALL FVOXXX(W(1,2   ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,15  ))     
      CALL FVOXXX(W(1,15  ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,16  ))    
      CALL FVOXXX(W(1,16  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,17  ))    
      CALL IOVXXX(W(1,1   ),W(1,17  ),W(1,6   ),GAD ,AMP(3   ))            
      CALL FVOXXX(W(1,15  ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,18  ))    
      CALL FVOXXX(W(1,18  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,19  ))    
      CALL IOVXXX(W(1,1   ),W(1,19  ),W(1,6   ),GAD ,AMP(4   ))            
      CALL FVOXXX(W(1,10  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,20  ))     
      CALL FVOXXX(W(1,20  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,21  ))    
      CALL IOVXXX(W(1,1   ),W(1,21  ),W(1,6   ),GAD ,AMP(5   ))            
      CALL FVOXXX(W(1,13  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,22  ))     
      CALL FVOXXX(W(1,22  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,23  ))    
      CALL IOVXXX(W(1,1   ),W(1,23  ),W(1,6   ),GAD ,AMP(6   ))            
      CALL FVOXXX(W(1,11  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,24  ))     
      CALL IOVXXX(W(1,1   ),W(1,24  ),W(1,6   ),GAD ,AMP(7   ))            
      CALL FVOXXX(W(1,14  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,25  ))     
      CALL IOVXXX(W(1,1   ),W(1,25  ),W(1,6   ),GAD ,AMP(8   ))            
      CALL FVIXXX(W(1,9   ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,26  ))    
      CALL FVIXXX(W(1,26  ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,27  ))    
      CALL IOVXXX(W(1,27  ),W(1,2   ),W(1,6   ),GAD ,AMP(9   ))            
      CALL FVIXXX(W(1,26  ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,28  ))    
      CALL IOVXXX(W(1,28  ),W(1,2   ),W(1,6   ),GAD ,AMP(10  ))            
      CALL FVIXXX(W(1,1   ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,29  ))    
      CALL FVIXXX(W(1,29  ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,30  ))    
      CALL IOVXXX(W(1,30  ),W(1,15  ),W(1,6   ),GAD ,AMP(11  ))            
      CALL FVIXXX(W(1,29  ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,31  ))    
      CALL IOVXXX(W(1,31  ),W(1,15  ),W(1,6   ),GAD ,AMP(12  ))            
      CALL FVIXXX(W(1,29  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,32  ))     
      CALL FVIXXX(W(1,32  ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,33  ))    
      CALL IOVXXX(W(1,33  ),W(1,2   ),W(1,6   ),GAD ,AMP(13  ))            
      CALL FVIXXX(W(1,32  ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,34  ))    
      CALL IOVXXX(W(1,34  ),W(1,2   ),W(1,6   ),GAD ,AMP(14  ))            
      CALL FVIXXX(W(1,30  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,35  ))     
      CALL IOVXXX(W(1,35  ),W(1,2   ),W(1,6   ),GAD ,AMP(15  ))            
      CALL FVIXXX(W(1,31  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,36  ))     
      CALL IOVXXX(W(1,36  ),W(1,2   ),W(1,6   ),GAD ,AMP(16  ))            
      CALL JIOXXX(W(1,26  ),W(1,2   ),GAD ,ZERO    ,AWIDTH  ,W(1,37  ))    
      CALL FVIXXX(W(1,4   ),W(1,37  ),GAL ,ZERO    ,ZERO    ,W(1,38  ))    
      CALL IOVXXX(W(1,38  ),W(1,3   ),W(1,6   ),GAL ,AMP(17  ))            
      CALL JIOXXX(W(1,26  ),W(1,2   ),GZD ,ZMASS   ,ZWIDTH  ,W(1,39  ))    
      CALL FVIXXX(W(1,4   ),W(1,39  ),GZL ,ZERO    ,ZERO    ,W(1,40  ))    
      CALL IOVXXX(W(1,40  ),W(1,3   ),W(1,6   ),GAL ,AMP(18  ))            
      CALL JIOXXX(W(1,29  ),W(1,15  ),GAD ,ZERO    ,AWIDTH  ,W(1,41  ))    
      CALL FVIXXX(W(1,4   ),W(1,41  ),GAL ,ZERO    ,ZERO    ,W(1,42  ))    
      CALL IOVXXX(W(1,42  ),W(1,3   ),W(1,6   ),GAL ,AMP(19  ))            
      CALL JIOXXX(W(1,29  ),W(1,15  ),GZD ,ZMASS   ,ZWIDTH  ,W(1,43  ))    
      CALL FVIXXX(W(1,4   ),W(1,43  ),GZL ,ZERO    ,ZERO    ,W(1,44  ))    
      CALL IOVXXX(W(1,44  ),W(1,3   ),W(1,6   ),GAL ,AMP(20  ))            
      CALL JIOXXX(W(1,32  ),W(1,2   ),GAD ,ZERO    ,AWIDTH  ,W(1,45  ))    
      CALL FVIXXX(W(1,4   ),W(1,45  ),GAL ,ZERO    ,ZERO    ,W(1,46  ))    
      CALL IOVXXX(W(1,46  ),W(1,3   ),W(1,6   ),GAL ,AMP(21  ))            
      CALL JIOXXX(W(1,32  ),W(1,2   ),GZD ,ZMASS   ,ZWIDTH  ,W(1,47  ))    
      CALL FVIXXX(W(1,4   ),W(1,47  ),GZL ,ZERO    ,ZERO    ,W(1,48  ))    
      CALL IOVXXX(W(1,48  ),W(1,3   ),W(1,6   ),GAL ,AMP(22  ))            
      CALL FVOXXX(W(1,3   ),W(1,37  ),GAL ,ZERO    ,ZERO    ,W(1,49  ))    
      CALL IOVXXX(W(1,4   ),W(1,49  ),W(1,6   ),GAL ,AMP(23  ))            
      CALL FVOXXX(W(1,3   ),W(1,39  ),GZL ,ZERO    ,ZERO    ,W(1,50  ))    
      CALL IOVXXX(W(1,4   ),W(1,50  ),W(1,6   ),GAL ,AMP(24  ))            
      CALL FVOXXX(W(1,3   ),W(1,41  ),GAL ,ZERO    ,ZERO    ,W(1,51  ))    
      CALL IOVXXX(W(1,4   ),W(1,51  ),W(1,6   ),GAL ,AMP(25  ))            
      CALL FVOXXX(W(1,3   ),W(1,43  ),GZL ,ZERO    ,ZERO    ,W(1,52  ))    
      CALL IOVXXX(W(1,4   ),W(1,52  ),W(1,6   ),GAL ,AMP(26  ))            
      CALL FVOXXX(W(1,3   ),W(1,45  ),GAL ,ZERO    ,ZERO    ,W(1,53  ))    
      CALL IOVXXX(W(1,4   ),W(1,53  ),W(1,6   ),GAL ,AMP(27  ))            
      CALL FVOXXX(W(1,3   ),W(1,47  ),GZL ,ZERO    ,ZERO    ,W(1,54  ))    
      CALL IOVXXX(W(1,4   ),W(1,54  ),W(1,6   ),GAL ,AMP(28  ))            
      CALL IOVXXX(W(1,26  ),W(1,10  ),W(1,6   ),GAD ,AMP(29  ))            
      CALL IOVXXX(W(1,26  ),W(1,13  ),W(1,6   ),GAD ,AMP(30  ))            
      CALL IOVXXX(W(1,29  ),W(1,16  ),W(1,6   ),GAD ,AMP(31  ))            
      CALL IOVXXX(W(1,29  ),W(1,18  ),W(1,6   ),GAD ,AMP(32  ))            
      CALL IOVXXX(W(1,29  ),W(1,20  ),W(1,6   ),GAD ,AMP(33  ))            
      CALL IOVXXX(W(1,29  ),W(1,22  ),W(1,6   ),GAD ,AMP(34  ))            
      CALL IOVXXX(W(1,32  ),W(1,10  ),W(1,6   ),GAD ,AMP(35  ))            
      CALL IOVXXX(W(1,32  ),W(1,13  ),W(1,6   ),GAD ,AMP(36  ))            
      CALL FVOXXX(W(1,2   ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,55  ))    
      CALL FVOXXX(W(1,55  ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,56  ))    
      CALL IOVXXX(W(1,9   ),W(1,56  ),W(1,6   ),GAD ,AMP(37  ))            
      CALL FVOXXX(W(1,55  ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,57  ))    
      CALL IOVXXX(W(1,9   ),W(1,57  ),W(1,6   ),GAD ,AMP(38  ))            
      CALL FVOXXX(W(1,15  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,58  ))    
      CALL FVOXXX(W(1,58  ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,59  ))    
      CALL IOVXXX(W(1,1   ),W(1,59  ),W(1,6   ),GAD ,AMP(39  ))            
      CALL FVOXXX(W(1,58  ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,60  ))    
      CALL IOVXXX(W(1,1   ),W(1,60  ),W(1,6   ),GAD ,AMP(40  ))            
      CALL FVOXXX(W(1,55  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,61  ))     
      CALL FVOXXX(W(1,61  ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,62  ))    
      CALL IOVXXX(W(1,1   ),W(1,62  ),W(1,6   ),GAD ,AMP(41  ))            
      CALL FVOXXX(W(1,61  ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,63  ))    
      CALL IOVXXX(W(1,1   ),W(1,63  ),W(1,6   ),GAD ,AMP(42  ))            
      CALL FVOXXX(W(1,56  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,64  ))     
      CALL IOVXXX(W(1,1   ),W(1,64  ),W(1,6   ),GAD ,AMP(43  ))            
      CALL FVOXXX(W(1,57  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,65  ))     
      CALL IOVXXX(W(1,1   ),W(1,65  ),W(1,6   ),GAD ,AMP(44  ))            
      CALL FVIXXX(W(1,9   ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,66  ))    
      CALL FVIXXX(W(1,66  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,67  ))    
      CALL IOVXXX(W(1,67  ),W(1,2   ),W(1,6   ),GAD ,AMP(45  ))            
      CALL FVIXXX(W(1,9   ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,68  ))    
      CALL FVIXXX(W(1,68  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,69  ))    
      CALL IOVXXX(W(1,69  ),W(1,2   ),W(1,6   ),GAD ,AMP(46  ))            
      CALL FVIXXX(W(1,1   ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,70  ))    
      CALL FVIXXX(W(1,70  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,71  ))    
      CALL IOVXXX(W(1,71  ),W(1,15  ),W(1,6   ),GAD ,AMP(47  ))            
      CALL FVIXXX(W(1,1   ),W(1,12  ),GZD ,ZERO    ,ZERO    ,W(1,72  ))    
      CALL FVIXXX(W(1,72  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,73  ))    
      CALL IOVXXX(W(1,73  ),W(1,15  ),W(1,6   ),GAD ,AMP(48  ))            
      CALL FVIXXX(W(1,70  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,74  ))     
      CALL FVIXXX(W(1,74  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,75  ))    
      CALL IOVXXX(W(1,75  ),W(1,2   ),W(1,6   ),GAD ,AMP(49  ))            
      CALL FVIXXX(W(1,72  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,76  ))     
      CALL FVIXXX(W(1,76  ),W(1,5   ),GAD ,ZERO    ,ZERO    ,W(1,77  ))    
      CALL IOVXXX(W(1,77  ),W(1,2   ),W(1,6   ),GAD ,AMP(50  ))            
      CALL FVIXXX(W(1,71  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,78  ))     
      CALL IOVXXX(W(1,78  ),W(1,2   ),W(1,6   ),GAD ,AMP(51  ))            
      CALL FVIXXX(W(1,73  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,79  ))     
      CALL IOVXXX(W(1,79  ),W(1,2   ),W(1,6   ),GAD ,AMP(52  ))            
      CALL JIOXXX(W(1,9   ),W(1,55  ),GAD ,ZERO    ,AWIDTH  ,W(1,80  ))    
      CALL FVIXXX(W(1,4   ),W(1,80  ),GAL ,ZERO    ,ZERO    ,W(1,81  ))    
      CALL IOVXXX(W(1,81  ),W(1,3   ),W(1,6   ),GAL ,AMP(53  ))            
      CALL JIOXXX(W(1,9   ),W(1,55  ),GZD ,ZMASS   ,ZWIDTH  ,W(1,82  ))    
      CALL FVIXXX(W(1,4   ),W(1,82  ),GZL ,ZERO    ,ZERO    ,W(1,83  ))    
      CALL IOVXXX(W(1,83  ),W(1,3   ),W(1,6   ),GAL ,AMP(54  ))            
      CALL JIOXXX(W(1,1   ),W(1,58  ),GAD ,ZERO    ,AWIDTH  ,W(1,84  ))    
      CALL FVIXXX(W(1,4   ),W(1,84  ),GAL ,ZERO    ,ZERO    ,W(1,85  ))    
      CALL IOVXXX(W(1,85  ),W(1,3   ),W(1,6   ),GAL ,AMP(55  ))            
      CALL JIOXXX(W(1,1   ),W(1,58  ),GZD ,ZMASS   ,ZWIDTH  ,W(1,86  ))    
      CALL FVIXXX(W(1,4   ),W(1,86  ),GZL ,ZERO    ,ZERO    ,W(1,87  ))    
      CALL IOVXXX(W(1,87  ),W(1,3   ),W(1,6   ),GAL ,AMP(56  ))            
      CALL JIOXXX(W(1,1   ),W(1,61  ),GAD ,ZERO    ,AWIDTH  ,W(1,88  ))    
      CALL FVIXXX(W(1,4   ),W(1,88  ),GAL ,ZERO    ,ZERO    ,W(1,89  ))    
      CALL IOVXXX(W(1,89  ),W(1,3   ),W(1,6   ),GAL ,AMP(57  ))            
      CALL JIOXXX(W(1,1   ),W(1,61  ),GZD ,ZMASS   ,ZWIDTH  ,W(1,90  ))    
      CALL FVIXXX(W(1,4   ),W(1,90  ),GZL ,ZERO    ,ZERO    ,W(1,91  ))    
      CALL IOVXXX(W(1,91  ),W(1,3   ),W(1,6   ),GAL ,AMP(58  ))            
      CALL FVOXXX(W(1,3   ),W(1,80  ),GAL ,ZERO    ,ZERO    ,W(1,92  ))    
      CALL IOVXXX(W(1,4   ),W(1,92  ),W(1,6   ),GAL ,AMP(59  ))            
      CALL FVOXXX(W(1,3   ),W(1,82  ),GZL ,ZERO    ,ZERO    ,W(1,93  ))    
      CALL IOVXXX(W(1,4   ),W(1,93  ),W(1,6   ),GAL ,AMP(60  ))            
      CALL FVOXXX(W(1,3   ),W(1,84  ),GAL ,ZERO    ,ZERO    ,W(1,94  ))    
      CALL IOVXXX(W(1,4   ),W(1,94  ),W(1,6   ),GAL ,AMP(61  ))            
      CALL FVOXXX(W(1,3   ),W(1,86  ),GZL ,ZERO    ,ZERO    ,W(1,95  ))    
      CALL IOVXXX(W(1,4   ),W(1,95  ),W(1,6   ),GAL ,AMP(62  ))            
      CALL FVOXXX(W(1,3   ),W(1,88  ),GAL ,ZERO    ,ZERO    ,W(1,96  ))    
      CALL IOVXXX(W(1,4   ),W(1,96  ),W(1,6   ),GAL ,AMP(63  ))            
      CALL FVOXXX(W(1,3   ),W(1,90  ),GZL ,ZERO    ,ZERO    ,W(1,97  ))    
      CALL IOVXXX(W(1,4   ),W(1,97  ),W(1,6   ),GAL ,AMP(64  ))            
      CALL IOVXXX(W(1,66  ),W(1,55  ),W(1,6   ),GAD ,AMP(65  ))            
      CALL IOVXXX(W(1,68  ),W(1,55  ),W(1,6   ),GAD ,AMP(66  ))            
      CALL IOVXXX(W(1,70  ),W(1,58  ),W(1,6   ),GAD ,AMP(67  ))            
      CALL IOVXXX(W(1,72  ),W(1,58  ),W(1,6   ),GAD ,AMP(68  ))            
      CALL IOVXXX(W(1,74  ),W(1,55  ),W(1,6   ),GAD ,AMP(69  ))            
      CALL IOVXXX(W(1,76  ),W(1,55  ),W(1,6   ),GAD ,AMP(70  ))            
      CALL IOVXXX(W(1,70  ),W(1,61  ),W(1,6   ),GAD ,AMP(71  ))            
      CALL IOVXXX(W(1,72  ),W(1,61  ),W(1,6   ),GAD ,AMP(72  ))            
      CALL FVOXXX(W(1,3   ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,98  ))    
      CALL JIOXXX(W(1,4   ),W(1,98  ),GAL ,ZERO    ,AWIDTH  ,W(1,99  ))    
      CALL FVOXXX(W(1,2   ),W(1,99  ),GAD ,ZERO    ,ZERO    ,W(1,100 ))    
      CALL IOVXXX(W(1,9   ),W(1,100 ),W(1,6   ),GAD ,AMP(73  ))            
      CALL JIOXXX(W(1,4   ),W(1,98  ),GZL ,ZMASS   ,ZWIDTH  ,W(1,101 ))    
      CALL FVOXXX(W(1,2   ),W(1,101 ),GZD ,ZERO    ,ZERO    ,W(1,102 ))    
      CALL IOVXXX(W(1,9   ),W(1,102 ),W(1,6   ),GAD ,AMP(74  ))            
      CALL FVOXXX(W(1,15  ),W(1,99  ),GAD ,ZERO    ,ZERO    ,W(1,103 ))    
      CALL IOVXXX(W(1,1   ),W(1,103 ),W(1,6   ),GAD ,AMP(75  ))            
      CALL FVOXXX(W(1,15  ),W(1,101 ),GZD ,ZERO    ,ZERO    ,W(1,104 ))    
      CALL IOVXXX(W(1,1   ),W(1,104 ),W(1,6   ),GAD ,AMP(76  ))            
      CALL FVOXXX(W(1,100 ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,105 ))     
      CALL IOVXXX(W(1,1   ),W(1,105 ),W(1,6   ),GAD ,AMP(77  ))            
      CALL FVOXXX(W(1,102 ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,106 ))     
      CALL IOVXXX(W(1,1   ),W(1,106 ),W(1,6   ),GAD ,AMP(78  ))            
      CALL FVIXXX(W(1,9   ),W(1,99  ),GAD ,ZERO    ,ZERO    ,W(1,107 ))    
      CALL IOVXXX(W(1,107 ),W(1,2   ),W(1,6   ),GAD ,AMP(79  ))            
      CALL FVIXXX(W(1,9   ),W(1,101 ),GZD ,ZERO    ,ZERO    ,W(1,108 ))    
      CALL IOVXXX(W(1,108 ),W(1,2   ),W(1,6   ),GAD ,AMP(80  ))            
      CALL FVIXXX(W(1,1   ),W(1,99  ),GAD ,ZERO    ,ZERO    ,W(1,109 ))    
      CALL IOVXXX(W(1,109 ),W(1,15  ),W(1,6   ),GAD ,AMP(81  ))            
      CALL FVIXXX(W(1,1   ),W(1,101 ),GZD ,ZERO    ,ZERO    ,W(1,110 ))    
      CALL IOVXXX(W(1,110 ),W(1,15  ),W(1,6   ),GAD ,AMP(82  ))            
      CALL FVIXXX(W(1,109 ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,111 ))     
      CALL IOVXXX(W(1,111 ),W(1,2   ),W(1,6   ),GAD ,AMP(83  ))            
      CALL FVIXXX(W(1,110 ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,112 ))     
      CALL IOVXXX(W(1,112 ),W(1,2   ),W(1,6   ),GAD ,AMP(84  ))            
      CALL JIOXXX(W(1,9   ),W(1,2   ),GAD ,ZERO    ,AWIDTH  ,W(1,113 ))    
      CALL FVIXXX(W(1,4   ),W(1,113 ),GAL ,ZERO    ,ZERO    ,W(1,114 ))    
      CALL FVIXXX(W(1,114 ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,115 ))    
      CALL IOVXXX(W(1,115 ),W(1,3   ),W(1,6   ),GAL ,AMP(85  ))            
      CALL JIOXXX(W(1,9   ),W(1,2   ),GZD ,ZMASS   ,ZWIDTH  ,W(1,116 ))    
      CALL FVIXXX(W(1,4   ),W(1,116 ),GZL ,ZERO    ,ZERO    ,W(1,117 ))    
      CALL FVIXXX(W(1,117 ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,118 ))    
      CALL IOVXXX(W(1,118 ),W(1,3   ),W(1,6   ),GAL ,AMP(86  ))            
      CALL JIOXXX(W(1,1   ),W(1,15  ),GAD ,ZERO    ,AWIDTH  ,W(1,119 ))    
      CALL FVIXXX(W(1,4   ),W(1,119 ),GAL ,ZERO    ,ZERO    ,W(1,120 ))    
      CALL FVIXXX(W(1,120 ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,121 ))    
      CALL IOVXXX(W(1,121 ),W(1,3   ),W(1,6   ),GAL ,AMP(87  ))            
      CALL JIOXXX(W(1,1   ),W(1,15  ),GZD ,ZMASS   ,ZWIDTH  ,W(1,122 ))    
      CALL FVIXXX(W(1,4   ),W(1,122 ),GZL ,ZERO    ,ZERO    ,W(1,123 ))    
      CALL FVIXXX(W(1,123 ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,124 ))    
      CALL IOVXXX(W(1,124 ),W(1,3   ),W(1,6   ),GAL ,AMP(88  ))            
      CALL FVOXXX(W(1,98  ),W(1,113 ),GAL ,ZERO    ,ZERO    ,W(1,125 ))    
      CALL IOVXXX(W(1,4   ),W(1,125 ),W(1,6   ),GAL ,AMP(89  ))            
      CALL FVOXXX(W(1,98  ),W(1,116 ),GZL ,ZERO    ,ZERO    ,W(1,126 ))    
      CALL IOVXXX(W(1,4   ),W(1,126 ),W(1,6   ),GAL ,AMP(90  ))            
      CALL FVOXXX(W(1,98  ),W(1,119 ),GAL ,ZERO    ,ZERO    ,W(1,127 ))    
      CALL IOVXXX(W(1,4   ),W(1,127 ),W(1,6   ),GAL ,AMP(91  ))            
      CALL FVOXXX(W(1,98  ),W(1,122 ),GZL ,ZERO    ,ZERO    ,W(1,128 ))    
      CALL IOVXXX(W(1,4   ),W(1,128 ),W(1,6   ),GAL ,AMP(92  ))            
      CALL IOVXXX(W(1,114 ),W(1,98  ),W(1,6   ),GAL ,AMP(93  ))            
      CALL IOVXXX(W(1,117 ),W(1,98  ),W(1,6   ),GAL ,AMP(94  ))            
      CALL IOVXXX(W(1,120 ),W(1,98  ),W(1,6   ),GAL ,AMP(95  ))            
      CALL IOVXXX(W(1,123 ),W(1,98  ),W(1,6   ),GAL ,AMP(96  ))            
      CALL FVIXXX(W(1,4   ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,129 ))    
      CALL JIOXXX(W(1,129 ),W(1,3   ),GAL ,ZERO    ,AWIDTH  ,W(1,130 ))    
      CALL FVOXXX(W(1,2   ),W(1,130 ),GAD ,ZERO    ,ZERO    ,W(1,131 ))    
      CALL IOVXXX(W(1,9   ),W(1,131 ),W(1,6   ),GAD ,AMP(97  ))            
      CALL JIOXXX(W(1,129 ),W(1,3   ),GZL ,ZMASS   ,ZWIDTH  ,W(1,132 ))    
      CALL FVOXXX(W(1,2   ),W(1,132 ),GZD ,ZERO    ,ZERO    ,W(1,133 ))    
      CALL IOVXXX(W(1,9   ),W(1,133 ),W(1,6   ),GAD ,AMP(98  ))            
      CALL FVOXXX(W(1,15  ),W(1,130 ),GAD ,ZERO    ,ZERO    ,W(1,134 ))    
      CALL IOVXXX(W(1,1   ),W(1,134 ),W(1,6   ),GAD ,AMP(99  ))            
      CALL FVOXXX(W(1,15  ),W(1,132 ),GZD ,ZERO    ,ZERO    ,W(1,135 ))    
      CALL IOVXXX(W(1,1   ),W(1,135 ),W(1,6   ),GAD ,AMP(100 ))            
      CALL FVOXXX(W(1,131 ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,136 ))     
      CALL IOVXXX(W(1,1   ),W(1,136 ),W(1,6   ),GAD ,AMP(101 ))            
      CALL FVOXXX(W(1,133 ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,137 ))     
      CALL IOVXXX(W(1,1   ),W(1,137 ),W(1,6   ),GAD ,AMP(102 ))            
      CALL FVIXXX(W(1,9   ),W(1,130 ),GAD ,ZERO    ,ZERO    ,W(1,138 ))    
      CALL IOVXXX(W(1,138 ),W(1,2   ),W(1,6   ),GAD ,AMP(103 ))            
      CALL FVIXXX(W(1,9   ),W(1,132 ),GZD ,ZERO    ,ZERO    ,W(1,139 ))    
      CALL IOVXXX(W(1,139 ),W(1,2   ),W(1,6   ),GAD ,AMP(104 ))            
      CALL FVIXXX(W(1,1   ),W(1,130 ),GAD ,ZERO    ,ZERO    ,W(1,140 ))    
      CALL IOVXXX(W(1,140 ),W(1,15  ),W(1,6   ),GAD ,AMP(105 ))            
      CALL FVIXXX(W(1,1   ),W(1,132 ),GZD ,ZERO    ,ZERO    ,W(1,141 ))    
      CALL IOVXXX(W(1,141 ),W(1,15  ),W(1,6   ),GAD ,AMP(106 ))            
      CALL FVIXXX(W(1,140 ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,142 ))     
      CALL IOVXXX(W(1,142 ),W(1,2   ),W(1,6   ),GAD ,AMP(107 ))            
      CALL FVIXXX(W(1,141 ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,143 ))     
      CALL IOVXXX(W(1,143 ),W(1,2   ),W(1,6   ),GAD ,AMP(108 ))            
      CALL FVIXXX(W(1,129 ),W(1,113 ),GAL ,ZERO    ,ZERO    ,W(1,144 ))    
      CALL IOVXXX(W(1,144 ),W(1,3   ),W(1,6   ),GAL ,AMP(109 ))            
      CALL FVIXXX(W(1,129 ),W(1,116 ),GZL ,ZERO    ,ZERO    ,W(1,145 ))    
      CALL IOVXXX(W(1,145 ),W(1,3   ),W(1,6   ),GAL ,AMP(110 ))            
      CALL FVIXXX(W(1,129 ),W(1,119 ),GAL ,ZERO    ,ZERO    ,W(1,146 ))    
      CALL IOVXXX(W(1,146 ),W(1,3   ),W(1,6   ),GAL ,AMP(111 ))            
      CALL FVIXXX(W(1,129 ),W(1,122 ),GZL ,ZERO    ,ZERO    ,W(1,147 ))    
      CALL IOVXXX(W(1,147 ),W(1,3   ),W(1,6   ),GAL ,AMP(112 ))            
      CALL FVOXXX(W(1,3   ),W(1,113 ),GAL ,ZERO    ,ZERO    ,W(1,148 ))    
      CALL FVOXXX(W(1,148 ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,149 ))    
      CALL IOVXXX(W(1,4   ),W(1,149 ),W(1,6   ),GAL ,AMP(113 ))            
      CALL FVOXXX(W(1,3   ),W(1,116 ),GZL ,ZERO    ,ZERO    ,W(1,150 ))    
      CALL FVOXXX(W(1,150 ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,151 ))    
      CALL IOVXXX(W(1,4   ),W(1,151 ),W(1,6   ),GAL ,AMP(114 ))            
      CALL FVOXXX(W(1,3   ),W(1,119 ),GAL ,ZERO    ,ZERO    ,W(1,152 ))    
      CALL FVOXXX(W(1,152 ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,153 ))    
      CALL IOVXXX(W(1,4   ),W(1,153 ),W(1,6   ),GAL ,AMP(115 ))            
      CALL FVOXXX(W(1,3   ),W(1,122 ),GZL ,ZERO    ,ZERO    ,W(1,154 ))    
      CALL FVOXXX(W(1,154 ),W(1,5   ),GAL ,ZERO    ,ZERO    ,W(1,155 ))    
      CALL IOVXXX(W(1,4   ),W(1,155 ),W(1,6   ),GAL ,AMP(116 ))            
      CALL IOVXXX(W(1,129 ),W(1,148 ),W(1,6   ),GAL ,AMP(117 ))            
      CALL IOVXXX(W(1,129 ),W(1,150 ),W(1,6   ),GAL ,AMP(118 ))            
      CALL IOVXXX(W(1,129 ),W(1,152 ),W(1,6   ),GAL ,AMP(119 ))            
      CALL IOVXXX(W(1,129 ),W(1,154 ),W(1,6   ),GAL ,AMP(120 ))            

c--------------------------------------------------------------------

c uu -> Z A A g

      subprocess(1) =   -AMP(  1)-AMP(  2)-AMP(  3)-AMP(  4)-AMP(  5)
     &                  -AMP(  6)-AMP(  7)-AMP(  8)-AMP(  9)-AMP( 10)
     &                  -AMP( 11)-AMP( 12)-AMP( 13)-AMP( 14)-AMP( 15)
     &                  -AMP( 16)-AMP( 29)-AMP( 30)-AMP( 31)-AMP( 32)
     &                  -AMP( 33)-AMP( 34)-AMP( 35)-AMP( 36)-AMP( 37)
     &                  -AMP( 38)-AMP( 39)-AMP( 40)-AMP( 41)-AMP( 42)
     &                  -AMP( 43)-AMP( 44)-AMP( 45)-AMP( 46)-AMP( 47)
     &                  -AMP( 48)-AMP( 49)-AMP( 50)-AMP( 51)-AMP( 52)
     &                  -AMP( 65)-AMP( 66)-AMP( 67)-AMP( 68)-AMP( 69)
     &                  -AMP( 70)-AMP( 71)-AMP( 72)

      subprocess(2) =   -AMP( 17)-AMP( 18)-AMP( 19)-AMP( 20)-AMP( 21)
     &                  -AMP( 22)-AMP( 23)-AMP( 24)-AMP( 25)-AMP( 26)
     &                  -AMP( 27)-AMP( 28)-AMP( 53)-AMP( 54)-AMP( 55)
     &                  -AMP( 56)-AMP( 57)-AMP( 58)-AMP( 59)-AMP( 60)
     &                  -AMP( 61)-AMP( 62)-AMP( 63)-AMP( 64)-AMP( 73)
     &                  -AMP( 74)-AMP( 75)-AMP( 76)-AMP( 77)-AMP( 78)
     &                  -AMP( 79)-AMP( 80)-AMP( 81)-AMP( 82)-AMP( 83)
     &                  -AMP( 84)-AMP( 97)-AMP( 98)-AMP( 99)-AMP(100)
     &                  -AMP(101)-AMP(102)-AMP(103)-AMP(104)-AMP(105)
     &                  -AMP(106)-AMP(107)-AMP(108)

      subprocess(3) =   -AMP( 85)-AMP( 86)-AMP( 87)-AMP( 88)-AMP( 89)
     &                  -AMP( 90)-AMP( 91)-AMP( 92)-AMP( 93)-AMP( 94)
     &                  -AMP( 95)-AMP( 96)-AMP(109)-AMP(110)-AMP(111)
     &                  -AMP(112)-AMP(113)-AMP(114)-AMP(115)-AMP(116)
     &                  -AMP(117)-AMP(118)-AMP(119)-AMP(120)

c -------------------------------------------------------------------

      JAMP(1) =   subprocess(1) + subprocess(2) + subprocess(3)

c------------------------------------------------------------------
c comparison with hand made code
      do i = 1,3
         if ((nhel(1).eq.nhel(2)).and.(nhel(3).eq.nhel(4))) then
           if((h.eq.1.and.nhel(4).eq.-1.and.nhel(5).eq.+1.and.nhel(6).eq.+1).or.
     &        (h.eq.2.and.nhel(4).eq.-1.and.nhel(5).eq.-1.and.nhel(6).eq.+1).or.
     &        (h.eq.3.and.nhel(4).eq.-1.and.nhel(5).eq.+1.and.nhel(6).eq.-1).or.
     &        (h.eq.4.and.nhel(4).eq.-1.and.nhel(5).eq.-1.and.nhel(6).eq.-1).or.
     &        (h.eq.5.and.nhel(4).eq.+1.and.nhel(5).eq.+1.and.nhel(6).eq.+1).or.
     &        (h.eq.6.and.nhel(4).eq.+1.and.nhel(5).eq.-1.and.nhel(6).eq.+1).or.
     &        (h.eq.7.and.nhel(4).eq.+1.and.nhel(5).eq.+1.and.nhel(6).eq.-1).or.
     &        (h.eq.8.and.nhel(4).eq.+1.and.nhel(5).eq.-1.and.nhel(6).eq.-1)
     &                                                    ) then
               tampr(i,nhel(1),nhel(7),2) 
     &            = subprocess(i)/g ! gluon pol. in helicity basis
           endif
         endif
      enddo ! divide out strong coupling
c------------------------------------------------------------------

      DD_ZAAG = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP = (0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          DD_ZAAG =DD_ZAAG+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo
C      CALL GAUGECHECK(JAMP,ZTEMP,EIGEN_VEC,EIGEN_VAL,NCOLOR,NEIGEN) 
      END
       
