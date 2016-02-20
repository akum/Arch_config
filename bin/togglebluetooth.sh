#!/bin/bash

btfile="/sys/devices/platform/thinkpad_acpi/bluetooth_enable"
status=$(cat $btfile)

if [ "$status" = "0" ]; then
	echo 1 > "$btfile"
else
	echo 0 > "$btfile"
fi
