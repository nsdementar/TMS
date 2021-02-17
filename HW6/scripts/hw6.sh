#!/bin/bash
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NORMAL='\033[0m'
FQDN="myapp.com"
ENTER_DIRECTORY=""
WAIT_DIRECTORY=""
WAIT_LOG="/var/log/wait.log"
WAIT_FILE=""
HW6=""
IP=""

function alphabet_dir {
	echo "Enter Directory: "
	read ENTER_DIRECTORY
	cd $ENTER_DIRECTORY
       	ls -l -X | grep dr | awk '{print "\033[0m"$1,$2,$3,$4,$5,$6,$7,"\033[0;31m"$8,$9"\033[0m"}'| column -t 
}

function alphabet_file {
	echo "Enter Directory: "
	read ENTER_DIRECTORY
	cd $ENTER_DIRECTORY
       	ls -l -X | grep ^- | awk '{print "\033[0m"$1,$2,$3,$4,$5,$6,$7,"\033[0;32m"$8,$9"\033[0m"}'| column -t
} 

function all_stat {
       	echo -e "	        $RED  Number of processes:"
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
	echo "Enter IP for myapp.com  to add /etc/hosts. Example "192.168.3.1" "
	read IP
	if grep "$IP" /etc/hosts;
	then echo "This IP already use"
	else
	sudo echo "$IP " " $FQDN" >> /etc/hosts && echo "This IP added."
	fi
} 

function hosts_add_overwrite {
	echo "Enter IP for myapp.com  to add /etc/hosts. Example "192.168.3.1" "
        read IP
        if grep "$IP" /etc/hosts;
        then echo "This IP already use. Do you want overwrite IP for myapp.com? Y/N"
		read OVERWRITE
		case $OVERWRITE in
			Y)
				echo "Enter new IP for myapp.com"
				read NEW_IP
				sudo echo "$IP " " $FQDN" | sed -i 's/'$IP'/'$NEW_IP'/' /etc/hosts
				;;
			N)
				echo "File /etc/hosts don't update."
				;;
		esac
        else
        sudo echo "$IP " " $FQDN" >> /etc/hosts && echo "This IP added."
        fi
}

function wait_ {
	function date_create_file {
	date +%H:%M:%S
}

	echo "Enter the path to the directory in which we will wait: "
        read WAIT
	while true; do
		if ls "$WAIT"/DELETE_ME
		then mkdir "$WAIT"/DELETE_ME/temp | echo "Created temp directory in "$WAIT"/DELETE_ME" >> $WAIT_LOG
			break
		fi	
		sleep 2

		if cat "$WAIT"/DELETE_ME.txt
		then date_create_file >> "$WAIT"/DELETE_ME.txt
			break
		fi
		sleep 2	
	done

	
}

echo "1. Alphabet directory"
echo "2. Alphabet files"
echo "3. All stats"
echo "4. Add IP and FQDN to /etc/hosts"
echo "5. Add IP and FQDN to /etc/hosts with overwrite"
echo "6. Wait directory or file"
echo -e "select job number [1-6]:"
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



