#!/bin/bash
echo -e "What do we do? \n"
echo "1. Replace  "s3:DeleteBucket" with "s3:CreateBucket" in the fileA."
echo "2. Add new line "arn:aws:s3:::hw12-bucket" after  "arn:aws:s3:::backup-test*" in fileA."
echo "3. Compare 2 numbers (A and B)."
echo -e "4. Compare 3 numbers (A,B and C).\n"

read HW12

function replace {
local x=""
echo -e "Enter the PATH to the fileA:\n" 
read x

echo -e "Searching for file test-hw12.json in $x \n"

if cat $x/test-hw12.json; then
       	echo -e "Good!!! We found file\n" && sed -i 's/"s3:DeleteBucket"/"s3:CreateBucket"/' $x/test-hw12.json &&
	echo -e " Good WORK! Line replaced in file!!!\n"
	cat $x/test-hw12.json
else
       	echo -e "Oh no...there is no file on this path...\n"
fi
}

function add_line {
local x=""
echo -e "Enter the PATH to the fileA:\n"
read x

echo -e "Searching for file test-hw12.json in $x \n"

if cat $x/test-hw12.json; then
        echo -e "Good!!! We found file...Adding line "arn:aws:s3:::hw12-bucket" after  "arn:aws:s3:::backup-test*" in fileA...\n" && 
	sed -i '/backup-test/a 		"arn:aws:s3:::hw12-bucket"' $x/test-hw12.json &&
        echo -e " Good WORK! Line added in file!!!\n"
        cat $x/test-hw12.json
else
        echo -e "Oh no...there is no file on this path...\n"
fi

}

function compare2 {
	local A=""
	local B=""
	echo -e "Enter number A\n"
	read A
	echo -e "Enter number B\n"
	read B

	if [[ "$A" -eq "$B" ]]; then
		echo -e "A = B\n"
	elif [[ "$A" -gt "$B" ]]; then
	       echo -e "A > B\n"
        else
	       echo "A < B"
	fi	       
        compare2
	
}

#function compare3 {
#}

case $HW12 in
	1)
		replace
		;;
	2)
		add_line
		;;
	3)
		compare2
		;;
	4)
		compare3
		;;
	*) echo "Bad choice...repeat again"
		;;
esac
	
