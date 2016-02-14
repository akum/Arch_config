status=$(synclient -l|grep Touch|cut -d'=' -f2)

if [ "$status" = " 1" ]; then
	synclient TouchpadOff=0
else
	synclient TouchpadOff=1
fi
