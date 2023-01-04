#! /bin/sh
status=$(acpi -b|awk -F ' ' ' {print $3}'|tr -d ',')
# echo "${status}"
if [[ "${status}" == "Charging" ]]; then
	echo 1
#	echo "${status}"
elif [[ "${status}" == "Unknown" ]]; then
	echo 0
#	echo "${status}"
elif [[ "${status}" == "Discharging" ]]; then
	echo 2
#	echo "${status}"
fi
