#!/bin/bash
#
# kml2fields: grab select fields from a kml file.
#
# Time-stamp: "2013-03-24 10:37:54 bkozdemb"
#
# Bob Kozdemba bkozdemba@gmail.com
#
kml=$1
#
# Start with all of the CDATA lines begining with line 2.
grep CDATA $1 |  tr -cd '\11\12\15\40-\176' | tail -n +2 | awk -F'<br />' \
'{ print $4 " "$5 " "$8 " "$6 }' | \
sed s'/ W/,/' | \
sed s'/ N/,/' |
sed s'/feet/,/' | \
sed s'/ Altitude: /,/' | \
sed s'/ Latitude: //' | \
sed s'/ Longitude: //' | \
sed s'/ Heading: //' | \
sed s'/,096/,96/' | \
sed s'/,097/,97/' 


