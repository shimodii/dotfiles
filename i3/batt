#!/bin/bash

stat=$(acpi | awk '{print $3}' | rev | cut -c2- | rev)
perc=$(acpi | awk '{print $4}' | rev | cut -c2- | rev)

# 🔋 🔌
# echo $stat
# echo $perc

if [[ $stat == 'Charging' ]]; then
	stat="🔌"
elif [[ $stat == 'Discharging' ]]; then
	stat="🔋"
fi

echo $stat$perc
