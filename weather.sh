#!/bin/sh

set -eux

CITY=Shenyang
LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

#curl \
#  -H "Accept-Language: $LANGUAGE" \
#  -H "User-Agent: $UA" \
#  -o result.html \
#  wttr.in/$CITY?format=4\&$UNIT

curl -o result.html -H "Accept-Language: $LANGUAGE" wttr.in/Shenyang?format=3\&$UNIT
#convert source.jpg <( curl wttr.in/Shenyang_tqp0.png ) -geometry +50+50 -composite target.jpg
echo -e "\n感谢你收看今天的天气预报" >> result.html
echo -e "\n 永远相信今天是最美好的一天\n" >> result.html
echo -e "\n 客亦知夫水與月乎？逝者如斯，而未嘗往也；盈虛者如彼，而卒莫消長也，蓋將自其變者而觀之，則天地曾不能以一瞬；自其不變者而觀之，則物與我皆無盡也，而又何羨乎？且夫天地之間，物各有主，苟非吾之所有，雖一毫而莫取。惟江上之清風，與山間之明月，耳得之而為聲，目遇之而成色，取之無禁，用之不竭，是造物者之無盡藏也，而吾與子之所共食。\n" >> result.html
