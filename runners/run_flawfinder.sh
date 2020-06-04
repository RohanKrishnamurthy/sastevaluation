#!/bin/bash

#----------------------------------------
#author:  Rohan Krishnamurthy, 
#rohan.krishnamurthy@dlr.de
#German Aerospace Center
#Year 2020
#----------------------------------------

LOGFILE=flawfinder-results.log

if [ -f $LOGFILE ]
then
	rm $LOGFILE
fi

for i in $(find ~/sastevaluation/C/testcases -type f -iregex ".*CWE.*[0-9]+\.c" \! -name "*w32*"); do
	echo "processing $i"
	FILENAME=$(echo $i|sed -r "s/.*\/(.*\.[c|h])/\1/")
	flawfinder -D -Q -S $i >> $LOGFILE
done

