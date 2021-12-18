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

curl -o result.html -H "Accept-Language: $LANGUAGE" wttr.in/Shenyang?format=4
echo "感谢你收看今天的天气预报" >> result.html