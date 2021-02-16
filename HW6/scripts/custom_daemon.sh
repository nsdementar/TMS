#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
NORMAL='\033[0m'
log="/var/log/custom_daemon.log"
function custom {
#echo "----------Time and Date----------" >> $log
echo -e "$RED--------------------------------------------$NORMAL"
date +%S:%M:%H" "%d" "%m" "%G
echo "   "
echo -e "		$GREEN Load average:$NORMAL"
cat /proc/loadavg
echo "   "
echo -e "		$GREEN Memory:$NORMAL"
free 
echo "   "
echo -e "		$GREEN Free disk space: $NORMAL"
df -h | grep /dev/mapper/ubuntu |  awk '{ print $1 " " $4 }'
}
custom >> $log
