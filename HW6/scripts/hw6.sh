#!/bin/bash
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NORMAL='\033[0m'
hosts=""

function alphabet_dir {
    ls -l -X | grep dr | awk '{print "\033[0m"$1,$2,$3,$4,$5,$6,$7,"\033[0;31m"$8,$9"\033[0m"}'| column -t 
}
function alphabet_file {
    ls -l -X | grep ^- | awk '{print "\033[0m"$1,$2,$3,$4,$5,$6,$7,"\033[0;32m"$8,$9"\033[0m"}'| column -t
} 
function all_stat {
    echo -e "		    $RED  Number of processes:"
    ps -aux | wc -l
    echo "   "
    echo -e "               $GREEN Load average:"
    cat /proc/loadavg
    echo "   "
    echo -e "               $YELLOW Memory:"
    free
    echo "   "
    echo -e "               $MAGENTA Free disk space:"
    df -h | grep /dev/mapper/ubuntu |  awk '{ print $1 " " $4"\033[0m" }'
    echo -e "$NORMAL"
}
function hosts_add {
    echo "Enter IP and FQDN to add /etc/hosts. Example "192.168.3.1 myapp.com" "
    read hosts 
    echo "$hosts" >> /home/hosts.log
        
} 
function hosts_add_overwrite {
    echo "Yes 5"
} 
function wait_ {
    echo "Yes 6"
} 
echo "1. Alphabet directory"
echo "2. Alphabet files"
echo "3. All stats"
echo "4. Add IP and FQDN to /etc/hosts"
echo "5. Add IP and FQDN to /etc/hosts with overwrite"
echo "6. Wait directory or file"
echo -e "select job number [1-6]:)"
read HW6

case $HW6 in
1)
alphabet_dir
;;

2)
alphabet_file
      ;;

3)
all_stat
 ;;

4)
hosts_add
;;

5)
hosts_add_overwrite
;;

6)
wait_
;;

*)
 echo "Please select number 1-6 again"
  ;;
esac


