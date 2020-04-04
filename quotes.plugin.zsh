#!/bin/bash

QUOTES_FILE=`echo "$ZSH/custom/plugins/quotes/quotes.txt"`
QUOTE_RAW=`shuf -n 1 $QUOTES_FILE`

QUOTE=`echo $QUOTE_RAW | awk -F'|' '{print $1}'`
QUOTE_AUTHOR=`echo $QUOTE_RAW | awk -F'|' '{print $2}'`

echo -e ""
echo -e "\"$QUOTE\""
echo -e "\t~ $QUOTE_AUTHOR"
echo -e ""
