#!/bin/bash
#
# kml2js: Convert select fields from a kml file to json format.
#
# Time-stamp: "2013-03-24 08:09:13 bkozdemb"
#
# Bob Kozdemba bkozdemba@gmail.com
#
kml=$1
#
# Start with all of the CDATA lines begining with line 2.
grep CDATA $1 | tail -n +2 | awk -F'<br />' \
'{ print "{" $2 ", "\
$3"," \
$4", " \
$5", " \
$6", " \
$7", " \
$8", " \
$9" }" }'
