#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
NORMAL='\033[0m'
log="/var/log/hw21.log"
function custom {
        echo -e ""
        echo -e "$GREEN--------------Time and date---------------$NORMAL"
        date
        echo "   "
        echo -e "             $GREEN Host Time Zone:$NORMAL"
        timedatectl | grep "Time zone"
        echo "   "
        echo -e "             $GREEN Host IP addresses::$NORMAL"
        hostname -I
        echo "   "
}
custom >> $log
