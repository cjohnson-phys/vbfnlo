c ************************************************************************************
c Author: Francisco Campanario
c E-mail: francam@particle.uni-karlsruhe.de
c************************************************************************************
c************************************************************************************
c    Declaration of variables 
c************************************************************************************
c***********************************************************************************
       Complex*16  S21211111111111(2),S21212111111111(2),S21212211111111
     &  (2),S21212221111111(2),S21212222111111(2),S21212222211111(2),S21
     &  212222221111(2),S21212222222111(2),S21212222222211(2),S212122222
     &  22221(2),S21212222222222(2),S21221111111111(2),S21222111111111(2
     &  ),S21222211111111(2),S21222221111111(2),S21222222111111(2),S2122
     &  2222211111(2),S21222222221111(2),S21222222222111(2),S21222222222
     &  211(2),S21222222222221(2),S21222222222222(2)
       Complex*16  S2111111111111(2),S2111211111111(2),S2111221111111(2)
     &  ,S2111222111111(2),S2111222211111(2),S2111222221111(2),S21112222
     &  22111(2),S2111222222211(2),S2111222222221(2),S2111222222222(2),S
     &  2112111111111(2),S2112211111111(2),S2112221111111(2),S2112222111
     &  111(2),S2112222211111(2),S2112222221111(2),S2112222222111(2),S21
     &  12222222211(2),S2112222222221(2),S2112222222222(2)
       Complex*16  S210111111111(2),S210121111111(2),S210122111111(2),S2
     &  10122211111(2),S210122221111(2),S210122222111(2),S210122222211(2
     &  ),S210122222221(2),S210122222222(2),S210211111111(2),S2102211111
     &  11(2),S210222111111(2),S210222211111(2),S210222221111(2),S210222
     &  222111(2),S210222222211(2),S210222222221(2),S210222222222(2)
       Complex*16  S2911111111(2),S2912111111(2),S2912211111(2),S2912221
     &  111(2),S2912222111(2),S2912222211(2),S2912222221(2),S2912222222(
     &  2),S2921111111(2),S2922111111(2),S2922211111(2),S2922221111(2),S
     &  2922222111(2),S2922222211(2),S2922222221(2),S2922222222(2)
       Complex*16  S281111111(2),S281211111(2),S281221111(2),S281222111(
     &  2),S281222211(2),S281222221(2),S281222222(2),S282111111(2),S2822
     &  11111(2),S282221111(2),S282222111(2),S282222211(2),S282222221(2)
     &  ,S282222222(2)
       Complex*16  S27111111(2),S27121111(2),S27122111(2),S27122211(2),S
     &  27122221(2),S27122222(2),S27211111(2),S27221111(2),S27222111(2),
     &  S27222211(2),S27222221(2),S27222222(2)
       Complex*16  S2611111(2),S2612111(2),S2612211(2),S2612221(2),S2612
     &  222(2),S2621111(2),S2622111(2),S2622211(2),S2622221(2),S2622222(
     &  2)
       Complex*16  S251111(2),S251211(2),S251221(2),S251222(2),S252111(2
     &  ),S252211(2),S252221(2),S252222(2)
       Complex*16  S24111(2),S24121(2),S24122(2),S24211(2),S24221(2),S24
     &  222(2)
       Complex*16  S2311(2),S2312(2),S2321(2),S2322(2)
       Complex*16  S221(2),S222(2)
       Complex*16  S20010111111111(2),S20010121111111(2),S20010122111111
     &  (2),S20010122211111(2),S20010122221111(2),S20010122222111(2),S20
     &  010122222211(2),S20010122222221(2),S20010122222222(2),S200102111
     &  11111(2),S20010221111111(2),S20010222111111(2),S20010222211111(2
     &  ),S20010222221111(2),S20010222222111(2),S20010222222211(2),S2001
     &  0222222221(2),S20010222222222(2)
       Complex*16  S200911111111(2),S200912111111(2),S200912211111(2),S2
     &  00912221111(2),S200912222111(2),S200912222211(2),S200912222221(2
     &  ),S200912222222(2),S200921111111(2),S200922111111(2),S2009222111
     &  11(2),S200922221111(2),S200922222111(2),S200922222211(2),S200922
     &  222221(2),S200922222222(2)
       Complex*16  S20081111111(2),S20081211111(2),S20081221111(2),S2008
     &  1222111(2),S20081222211(2),S20081222221(2),S20081222222(2),S2008
     &  2111111(2),S20082211111(2),S20082221111(2),S20082222111(2),S2008
     &  2222211(2),S20082222221(2),S20082222222(2)
       Complex*16  S2007111111(2),S2007121111(2),S2007122111(2),S2007122
     &  211(2),S2007122221(2),S2007122222(2),S2007211111(2),S2007221111(
     &  2),S2007222111(2),S2007222211(2),S2007222221(2),S2007222222(2)
       Complex*16  S200611111(2),S200612111(2),S200612211(2),S200612221(
     &  2),S200612222(2),S200621111(2),S200622111(2),S200622211(2),S2006
     &  22221(2),S200622222(2)
       Complex*16  S20051111(2),S20051211(2),S20051221(2),S20051222(2),S
     &  20052111(2),S20052211(2),S20052221(2),S20052222(2)
       Complex*16  S2004111(2),S2004121(2),S2004122(2),S2004211(2),S2004
     &  221(2),S2004222(2)
       Complex*16  S200311(2),S200312(2),S200321(2),S200322(2)
       Complex*16  S20021(2),S20022(2)
       Complex*16  S2h0010111111111(2),S2h0010121111111(2),S2h0010122111
     &  111(2),S2h0010122211111(2),S2h0010122221111(2),S2h0010122222111(
     &  2),S2h0010122222211(2),S2h0010122222221(2),S2h0010122222222(2),S
     &  2h0010211111111(2),S2h0010221111111(2),S2h0010222111111(2),S2h00
     &  10222211111(2),S2h0010222221111(2),S2h0010222222111(2),S2h001022
     &  2222211(2),S2h0010222222221(2),S2h0010222222222(2)
       Complex*16  S2h00911111111(2),S2h00912111111(2),S2h00912211111(2)
     &  ,S2h00912221111(2),S2h00912222111(2),S2h00912222211(2),S2h009122
     &  22221(2),S2h00912222222(2),S2h00921111111(2),S2h00922111111(2),S
     &  2h00922211111(2),S2h00922221111(2),S2h00922222111(2),S2h00922222
     &  211(2),S2h00922222221(2),S2h00922222222(2)
       Complex*16  S2h0081111111(2),S2h0081211111(2),S2h0081221111(2),S2
     &  h0081222111(2),S2h0081222211(2),S2h0081222221(2),S2h0081222222(2
     &  ),S2h0082111111(2),S2h0082211111(2),S2h0082221111(2),S2h00822221
     &  11(2),S2h0082222211(2),S2h0082222221(2),S2h0082222222(2)
       Complex*16  S2h007111111(2),S2h007121111(2),S2h007122111(2),S2h00
     &  7122211(2),S2h007122221(2),S2h007122222(2),S2h007211111(2),S2h00
     &  7221111(2),S2h007222111(2),S2h007222211(2),S2h007222221(2),S2h00
     &  7222222(2)
       Complex*16  S2h00611111(2),S2h00612111(2),S2h00612211(2),S2h00612
     &  221(2),S2h00612222(2),S2h00621111(2),S2h00622111(2),S2h00622211(
     &  2),S2h00622221(2),S2h00622222(2)
       Complex*16  S2h0051111(2),S2h0051211(2),S2h0051221(2),S2h0051222(
     &  2),S2h0052111(2),S2h0052211(2),S2h0052221(2),S2h0052222(2)
       Complex*16  S2h004111(2),S2h004121(2),S2h004122(2),S2h004211(2),S
     &  2h004221(2),S2h004222(2)
       Complex*16  S2h00311(2),S2h00312(2),S2h00321(2),S2h00322(2)
       Complex*16  S2h0021(2),S2h0022(2)
       Complex*16  S2000081111111(2),S2000081211111(2),S2000081221111(2)
     &  ,S2000081222111(2),S2000081222211(2),S2000081222221(2),S20000812
     &  22222(2),S2000082111111(2),S2000082211111(2),S2000082221111(2),S
     &  2000082222111(2),S2000082222211(2),S2000082222221(2),S2000082222
     &  222(2)
       Complex*16  S200007111111(2),S200007121111(2),S200007122111(2),S2
     &  00007122211(2),S200007122221(2),S200007122222(2),S200007211111(2
     &  ),S200007221111(2),S200007222111(2),S200007222211(2),S2000072222
     &  21(2),S200007222222(2)
       Complex*16  S20000611111(2),S20000612111(2),S20000612211(2),S2000
     &  0612221(2),S20000612222(2),S20000621111(2),S20000622111(2),S2000
     &  0622211(2),S20000622221(2),S20000622222(2)
       Complex*16  S2000051111(2),S2000051211(2),S2000051221(2),S2000051
     &  222(2),S2000052111(2),S2000052211(2),S2000052221(2),S2000052222(
     &  2)
       Complex*16  S200004111(2),S200004121(2),S200004122(2),S200004211(
     &  2),S200004221(2),S200004222(2)
       Complex*16  S20000311(2),S20000312(2),S20000321(2),S20000322(2)
       Complex*16  S2000021(2),S2000022(2)
       Complex*16  S2h000081111111(2),S2h000081211111(2),S2h000081221111
     &  (2),S2h000081222111(2),S2h000081222211(2),S2h000081222221(2),S2h
     &  000081222222(2),S2h000082111111(2),S2h000082211111(2),S2h0000822
     &  21111(2),S2h000082222111(2),S2h000082222211(2),S2h000082222221(2
     &  ),S2h000082222222(2)
       Complex*16  S2h00007111111(2),S2h00007121111(2),S2h00007122111(2)
     &  ,S2h00007122211(2),S2h00007122221(2),S2h00007122222(2),S2h000072
     &  11111(2),S2h00007221111(2),S2h00007222111(2),S2h00007222211(2),S
     &  2h00007222221(2),S2h00007222222(2)
       Complex*16  S2h0000611111(2),S2h0000612111(2),S2h0000612211(2),S2
     &  h0000612221(2),S2h0000612222(2),S2h0000621111(2),S2h0000622111(2
     &  ),S2h0000622211(2),S2h0000622221(2),S2h0000622222(2)
       Complex*16  S2h000051111(2),S2h000051211(2),S2h000051221(2),S2h00
     &  0051222(2),S2h000052111(2),S2h000052211(2),S2h000052221(2),S2h00
     &  0052222(2)
       Complex*16  S2h00004111(2),S2h00004121(2),S2h00004122(2),S2h00004
     &  211(2),S2h00004221(2),S2h00004222(2)
       Complex*16  S2h0000311(2),S2h0000312(2),S2h0000321(2),S2h0000322(
     &  2)
       Complex*16  S2h000021(2),S2h000022(2)
       Complex*16  S2h000000611111(2),S2h000000612111(2),S2h000000612211
     &  (2),S2h000000612221(2),S2h000000612222(2),S2h000000621111(2),S2h
     &  000000622111(2),S2h000000622211(2),S2h000000622221(2),S2h0000006
     &  22222(2)
       Complex*16  S2h00000051111(2),S2h00000051211(2),S2h00000051221(2)
     &  ,S2h00000051222(2),S2h00000052111(2),S2h00000052211(2),S2h000000
     &  52221(2),S2h00000052222(2)
       Complex*16  S2h0000004111(2),S2h0000004121(2),S2h0000004122(2),S2
     &  h0000004211(2),S2h0000004221(2),S2h0000004222(2)
       Complex*16  S2h000000311(2),S2h000000312(2),S2h000000321(2),S2h00
     &  0000322(2)
       Complex*16  S2h00000021(2),S2h00000022(2)
       Complex*16  S2000000611111(2),S2000000612111(2),S2000000612211(2)
     &  ,S2000000612221(2),S2000000612222(2),S2000000621111(2),S20000006
     &  22111(2),S2000000622211(2),S2000000622221(2),S2000000622222(2)
       Complex*16  S200000051111(2),S200000051211(2),S200000051221(2),S2
     &  00000051222(2),S200000052111(2),S200000052211(2),S200000052221(2
     &  ),S200000052222(2)
       Complex*16  S20000004111(2),S20000004121(2),S20000004122(2),S2000
     &  0004211(2),S20000004221(2),S20000004222(2)
       Complex*16  S2000000311(2),S2000000312(2),S2000000321(2),S2000000
     &  322(2)
       Complex*16  S200000021(2),S200000022(2)
       Complex*16  S2000000004111(2),S2000000004121(2),S2000000004122(2)
     &  ,S2000000004211(2),S2000000004221(2),S2000000004222(2)
       Complex*16  S200000000311(2),S200000000312(2),S200000000321(2),S2
     &  00000000322(2)
       Complex*16  S20000000021(2),S20000000022(2)
       Complex*16  S2000000001(2)
       Complex*16  S2h000000004111(2),S2h000000004121(2),S2h000000004122
     &  (2),S2h000000004211(2),S2h000000004221(2),S2h000000004222(2)
       Complex*16  S2h00000000311(2),S2h00000000312(2),S2h00000000321(2)
     &  ,S2h00000000322(2)
       Complex*16  S2h0000000021(2),S2h0000000022(2)
       Complex*16  S2h000000001(2)
       Complex*16  S2h000000000021(2),S2h000000000022(2)
       Complex*16  S2h00000000001(2)
       Complex*16  S2000000000021(2),S2000000000022(2)
       Complex*16  S200000000001(2)
       Complex*16  S20000000000001(2),S20000000000002(2)
       Complex*16  temp41(2,2,2),temp42(2,2,2)
       Complex*16  aux41(2,2,2),aux42(2,2,2)
       Complex*16  temp000041(2,2,2),temp000042(2,2,2)
       Complex*16  aux000041(2,2,2),aux000042(2,2,2)
       Complex*16  temp00000041(2,2,2),temp00000042(2,2,2)
       Complex*16  aux00000041(2,2,2),aux00000042(2,2,2)
       Complex*16  temp0000000041(2,2,2),temp0000000042(2,2,2)
       Complex*16  aux0000000041(2,2,2),aux0000000042(2,2,2)
       Complex*16  temp511(2,2,2),temp521(2,2,2),temp522(2,2,2)
       Complex*16  aux511(2,2,2),aux521(2,2,2),aux522(2,2,2)
       Complex*16  temp6111(2,2,2),temp6211(2,2,2),temp6221(2,2,2),temp6
     &  222(2,2,2)
       Complex*16  aux6111(2,2,2),aux6211(2,2,2),aux6221(2,2,2),aux6222(
     &  2,2,2)
       Complex*16  temp0041(2,2,2),temp0042(2,2,2)
       Complex*16  aux0041(2,2,2),aux0042(2,2,2)
       Complex*16  temp00511(2,2,2),temp00521(2,2,2),temp00522(2,2,2)
       Complex*16  aux00511(2,2,2),aux00521(2,2,2),aux00522(2,2,2)
       Complex*16  temp0000511(2,2,2),temp0000521(2,2,2),temp0000522(2,2
     &  ,2)
       Complex*16  aux0000511(2,2,2),aux0000521(2,2,2),aux0000522(2,2,2)
       Complex*16  temp000000511(2,2,2),temp000000521(2,2,2),temp0000005
     &  22(2,2,2)
       Complex*16  aux000000511(2,2,2),aux000000521(2,2,2),aux000000522(
     &  2,2,2)
       Complex*16  temp006111(2,2,2),temp006211(2,2,2),temp006221(2,2,2)
     &  ,temp006222(2,2,2)
       Complex*16  aux006111(2,2,2),aux006211(2,2,2),aux006221(2,2,2),au
     &  x006222(2,2,2)
       Complex*16  temp00006111(2,2,2),temp00006211(2,2,2),temp00006221(
     &  2,2,2),temp00006222(2,2,2)
       Complex*16  aux00006111(2,2,2),aux00006211(2,2,2),aux00006221(2,2
     &  ,2),aux00006222(2,2,2)
       Complex*16  temp0000006111(2,2,2),temp0000006211(2,2,2),temp00000
     &  06221(2,2,2),temp0000006222(2,2,2)
       Complex*16  aux0000006111(2,2,2),aux0000006211(2,2,2),aux00000062
     &  21(2,2,2),aux0000006222(2,2,2)
       Complex*16  temp71111(2,2,2),temp72111(2,2,2),temp72211(2,2,2),te
     &  mp72221(2,2,2),temp72222(2,2,2)
       Complex*16  aux71111(2,2,2),aux72111(2,2,2),aux72211(2,2,2),aux72
     &  221(2,2,2),aux72222(2,2,2)
       Complex*16  temp0071111(2,2,2),temp0072111(2,2,2),temp0072211(2,2
     &  ,2),temp0072221(2,2,2),temp0072222(2,2,2)
       Complex*16  aux0071111(2,2,2),aux0072111(2,2,2),aux0072211(2,2,2)
     &  ,aux0072221(2,2,2),aux0072222(2,2,2)
       Complex*16  temp000071111(2,2,2),temp000072111(2,2,2),temp0000722
     &  11(2,2,2),temp000072221(2,2,2),temp000072222(2,2,2)
       Complex*16  aux000071111(2,2,2),aux000072111(2,2,2),aux000072211(
     &  2,2,2),aux000072221(2,2,2),aux000072222(2,2,2)
       Complex*16  temp811111(2,2,2),temp821111(2,2,2),temp822111(2,2,2)
     &  ,temp822211(2,2,2),temp822221(2,2,2),temp822222(2,2,2)
       Complex*16  aux811111(2,2,2),aux821111(2,2,2),aux822111(2,2,2),au
     &  x822211(2,2,2),aux822221(2,2,2),aux822222(2,2,2)
       Complex*16  temp00811111(2,2,2),temp00821111(2,2,2),temp00822111(
     &  2,2,2),temp00822211(2,2,2),temp00822221(2,2,2),temp00822222(2,2,
     &  2)
       Complex*16  aux00811111(2,2,2),aux00821111(2,2,2),aux00822111(2,2
     &  ,2),aux00822211(2,2,2),aux00822221(2,2,2),aux00822222(2,2,2)
       Complex*16  temp0000811111(2,2,2),temp0000821111(2,2,2),temp00008
     &  22111(2,2,2),temp0000822211(2,2,2),temp0000822221(2,2,2),temp000
     &  0822222(2,2,2)
       Complex*16  aux0000811111(2,2,2),aux0000821111(2,2,2),aux00008221
     &  11(2,2,2),aux0000822211(2,2,2),aux0000822221(2,2,2),aux000082222
     &  2(2,2,2)
       Complex*16  temp9111111(2,2,2),temp9211111(2,2,2),temp9221111(2,2
     &  ,2),temp9222111(2,2,2),temp9222211(2,2,2),temp9222221(2,2,2),tem
     &  p9222222(2,2,2)
       Complex*16  aux9111111(2,2,2),aux9211111(2,2,2),aux9221111(2,2,2)
     &  ,aux9222111(2,2,2),aux9222211(2,2,2),aux9222221(2,2,2),aux922222
     &  2(2,2,2)
       Complex*16  temp009111111(2,2,2),temp009211111(2,2,2),temp0092211
     &  11(2,2,2),temp009222111(2,2,2),temp009222211(2,2,2),temp00922222
     &  1(2,2,2),temp009222222(2,2,2)
       Complex*16  aux009111111(2,2,2),aux009211111(2,2,2),aux009221111(
     &  2,2,2),aux009222111(2,2,2),aux009222211(2,2,2),aux009222221(2,2,
     &  2),aux009222222(2,2,2)
       Complex*16  temp101111111(2,2,2),temp102111111(2,2,2),temp1022111
     &  11(2,2,2),temp102221111(2,2,2),temp102222111(2,2,2),temp10222221
     &  1(2,2,2),temp102222221(2,2,2),temp102222222(2,2,2)
       Complex*16  aux101111111(2,2,2),aux102111111(2,2,2),aux102211111(
     &  2,2,2),aux102221111(2,2,2),aux102222111(2,2,2),aux102222211(2,2,
     &  2),aux102222221(2,2,2),aux102222222(2,2,2)
       Complex*16  temp00101111111(2,2,2),temp00102111111(2,2,2),temp001
     &  02211111(2,2,2),temp00102221111(2,2,2),temp00102222111(2,2,2),te
     &  mp00102222211(2,2,2),temp00102222221(2,2,2),temp00102222222(2,2,
     &  2)
       Complex*16  aux00101111111(2,2,2),aux00102111111(2,2,2),aux001022
     &  11111(2,2,2),aux00102221111(2,2,2),aux00102222111(2,2,2),aux0010
     &  2222211(2,2,2),aux00102222221(2,2,2),aux00102222222(2,2,2)
       Complex*16  temp1111111111(2,2,2),temp1121111111(2,2,2),temp11221
     &  11111(2,2,2),temp1122211111(2,2,2),temp1122221111(2,2,2),temp112
     &  2222111(2,2,2),temp1122222211(2,2,2),temp1122222221(2,2,2),temp1
     &  122222222(2,2,2)
       Complex*16  aux1111111111(2,2,2),aux1121111111(2,2,2),aux11221111
     &  11(2,2,2),aux1122211111(2,2,2),aux1122221111(2,2,2),aux112222211
     &  1(2,2,2),aux1122222211(2,2,2),aux1122222221(2,2,2),aux1122222222
     &  (2,2,2)
       Complex*16 S200000000,auxC300000000,tempC300000000,aux0000002(2,2
     &  ),temp0000002(2,2),aux0000003(2,2,2),temp0000003(2,2,2) 
       Complex*16  aux000000001(2),temp000000001(2) 
       Complex*16 S20000000000,S2000000000000,auxC30000000000,auxC300000
     &  0000000,tempC30000000000,tempC3000000000000,aux000000002(2,2),te
     &  mp000000002(2,2),aux00000000002(2,2),temp00000000002(2,2),aux000
     &  000003(2,2,2),temp000000003(2,2,2) 
       Complex*16  aux00000000001(2),temp00000000001(2) 
       Real*8   Inv4011111,Inv4021111,Inv4022111,Inv4022211,Inv4022221,I
     &  nv4022222
       Real*8   Inv60111,Inv60211,Inv60221,Inv60222
       Real*8   Inv801,Inv802
       Real*8   Inv8011,Inv8021,Inv8022
       Real*8   Inv80111,Inv80211,Inv80221,Inv80222
       Real*8   Inv801111,Inv802111,Inv802211,Inv802221,Inv802222
       Real*8   Inv601111,Inv602111,Inv602211,Inv602221,Inv602222
       Real*8   Inv6011111,Inv6021111,Inv6022111,Inv6022211,Inv6022221,I
     &  nv6022222
       Real*8   Inv60111111,Inv60211111,Inv60221111,Inv60222111,Inv60222
     &  211,Inv60222221,Inv60222222
       Real*8   Inv40111111,Inv40211111,Inv40221111,Inv40222111,Inv40222
     &  211,Inv40222221,Inv40222222
       Real*8   Inv401111111,Inv402111111,Inv402211111,Inv402221111,Inv4
     &  02222111,Inv402222211,Inv402222221,Inv402222222
       Real*8   Inv4011111111,Inv4021111111,Inv4022111111,Inv4022211111,
     &  Inv4022221111,Inv4022222111,Inv4022222211,Inv4022222221,Inv40222
     &  22222
       Real*8   Inv0011111111,Inv0021111111,Inv0022111111,Inv0022211111,
     &  Inv0022221111,Inv0022222111,Inv0022222211,Inv0022222221,Inv00222
     &  22222
       Real*8   Inv00111111111,Inv00211111111,Inv00221111111,Inv00222111
     &  111,Inv00222211111,Inv00222221111,Inv00222222111,Inv00222222211,
     &  Inv00222222221,Inv00222222222
       Real*8   Inv001111111111,Inv002111111111,Inv002211111111,Inv00222
     &  1111111,Inv002222111111,Inv002222211111,Inv002222221111,Inv00222
     &  2222111,Inv002222222211,Inv002222222221,Inv002222222222
       Real*8   Inv1001,Inv1002
       Real*8   Inv10011,Inv10021,Inv10022
       Real*8   Inv100,Inv120