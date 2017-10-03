#!/bin/bash
#
# csvClean: Clean a Columbus GPS data logger csv file.
#
# Time-stamp: "2013-03-24 21:45:33 bkozdemb"
#
# Bob Kozdemba bkozdemba@gmail.com
#
csv=$1
#
# Echo the header line and strip out N/S and E/W.
head -1 $csv | sed s'/N\/S//' | sed s'/E\/W//'
# Continue with line 2.
cat $csv | tr -cd '\11\12\15\40-\176' | tail -n +2 | awk -F',' \
'{ print $1 "," $2 ","\
$3"," \
$4"," \
$5"," \
$6"," \
$7"," \
$8"," \
$9 }' | \
sed s'/N//' | \
sed s'/W//'
