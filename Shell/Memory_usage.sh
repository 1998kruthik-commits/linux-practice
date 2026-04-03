#!/bin/bash
#Author - Kruthik
#Date - 
#Description -

# Set threshold (you can change 70 or 80)
threshold=70

# Get memory details using free command (in MB)
total=$(free -m | awk '/Mem:/ {print $2}')
used=$(free -m | awk '/Mem:/ {print $3}')

# Calculate free memory
free_mem=$((total - used))

# Calculate percentage
free_percent=$((free_mem * 100 / total))

# Display values
echo "Total Memory: $total MB"
echo "Used Memory: $used MB"
echo "Free Memory: $free_mem MB"
echo "Free Memory Percentage: $free_percent%"

# Check threshold
if [ $free_percent -lt $threshold ]
then
    echo "ALERT: Free memory is below threshold ($threshold%)"
else
    echo "Memory usage is normal"
fi
