#!/bin/csh
# required ack (to convert sjis -> euc -> sjis)
ulimit
set WRKSRC = $1
echo running csh script: '$Id: japanize.csh,v 1.8 2016/08/02 03:26:20 makoto Exp $' 
echo run japanize.sed ${WRKSRC} 

foreach file ( ${WRKSRC}/template/*ja ${WRKSRC}/po/ja.po)
  echo modifying for more japanized: $file
  mv   $file  $file.bak
  gsed -f files/japanize.sed $file.bak > $file
  end

foreach file ( ${WRKSRC}/po/ja_JP.SJIS.po)
  echo SJIS version: $file
  mv   $file  $file.bak
  ack -e $file.bak > $file.euc
  gsed -f files/japanize.sed $file.euc | ack -s > $file
  end



