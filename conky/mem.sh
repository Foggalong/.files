#!/bin/bash

# Gets all the memory variables
total=$(grep 'MemTotal' /proc/meminfo | sed -e 's/MemTotal: *//' -e 's/ kB//')
free=$(grep 'MemFree' /proc/meminfo | sed -e 's/MemFree: *//' -e 's/ kB//')
buffers=$(grep 'Buffers' /proc/meminfo | sed -e 's/Buffers: *//' | sed -e 's/ kB//')
cached=$(grep 'Cached:' /proc/meminfo | sed -n 1p | sed -e 's/Cached: *//' -e 's/ kB//')

# Calculates used memory
used=$(expr $total - $free - $buffers - $cached)

# Calculates memory limit
limit=$(echo "0.8*$total" | bc)

# Assigns color based on situation
if [[ "$used" > "$limit" ]]
	then
		# Color red
		echo "\${color d64937}"
else
	# Color white
	echo "\${color eeeeee}"
fi

exit 0
