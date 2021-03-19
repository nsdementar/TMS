#!/bin/bash/"

function help {
	echo -e "\nserver_list    # Вычитать адреса серверов из servers_list файла и вывести их на экран под порядковым номером(Server 1 is: IP, Server 2 is: IP...)"
	echo "command_ssh    # Выполнение команд через ssh на серверах"
	echo "uppercase      # Функция которая делает из стринги all uppercase"
	echo "lowercase      # Функция которая делает из стринги all lowercase"
	echo -e "transformation # Функция которая преобразует SENT в массив(array) и распечатывает первый и последний элемент нового массива\n"
	echo -e "Select option:\n"
	
read HW7
case $HW7 in
	"server_list") server_list
		;;
	"command_ssh") command_ssh
		;;
	"uppercase") uppercase
		;;
	"lowercase") lowercase
		;;
	"transformation") transformation
		;;
	*) echo "unknown key..."
		;;
esac
}

function server_list {
	local ip_n=1
	echo "Enter path server_list file"
	read SRV_LST
	for list in $(cat $SRV_LST)
	do
	echo "Server $ip_n is: $list"; ((ip_n++))	
done
	help
}

function command_ssh {
	local usr=""
	local ip_srv=""
	local command=""
	echo -e "Insert path file server_list:\n"
	read path_srv
	echo -e "Insert login:\n"
	read usr
	echo -e "Insert IP-address server:\n"
	read ip_srv
		if grep "$ip_srv" "$path_srv"
		then ssh -p 2222 "$usr"@"$ip_srv"  ping -n 10 localhost >> /tmp/ping.log
		else echo -e "This IP-address server don't find in server_list\n"
		fi
		}

function uppercase { 
	local UP=""
	echo "Write your string"
	read UP
	echo -e "Your UPPER string: ${UP^^}\n"
	help

}

function lowercase {
	local LOW=""
	echo "Write your string"
	read LOW
	echo -e "Your lower string: ${LOW,,}\n"
	help
}

function transformation {
	IFS=' '
	echo -e "Insert your string\n"
	read transform
	read -r -a array <<< "$transform"
	echo -e "\nYour elements:\nFirst - "${array[0]}" \nLast- "${array[-1]}"\n "
	help

}

if [ "$1" == "--help" ];
	then help
else
	echo "Use key --help to run script"
fi


