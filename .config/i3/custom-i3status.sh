#!/bin/sh


i3status --config ~/.config/i3status/config | while :
do
        read line
        
        # Display cmus song
        array="$(cmus-remote -Q)"
        artist=$(echo "$array" | grep ' artist ' | cut -d ' ' -f3-)
        song=$(echo "$array" | grep title | cut -d ' ' -f3-)

        time1=$(echo "$array" | grep duration | cut -d ' ' -f2)
        time2=$(echo "$array" | grep position | cut -d ' ' -f2)

        t1=$(date -u -d @${time1} +"%M:%S")
        t2=$(date -u -d @${time2} +"%M:%S")

        playing="$t2/$t1 $song - $artist"

        if [ "$t2" = "" ]; then
            playing=""
        else
            playing="${playing//&}"
        fi

        # Display used RAM
        mem=$(free -h| grep Mem| cut -d' ' -f20)

        # Display current brightness
        x=$(cat /sys/class/backlight/acpi_video0/brightness)
        x=$(echo "scale=2; $x/15 * 100"|bc)
        brightness="${x%.*}%"

        # Print final result
        echo -n " $playing |  $mem |  $brightness | $line" || exit 1
done
