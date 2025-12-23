#!/bin/bash

# CPU usage (first number from top command)
cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'.' -f1)

# RAM usage percentage
ram=$(free | grep Mem | awk '{print int($3/$2 * 100)}')

# Disk usage percentage (/ partition)
disk=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

# Show notification
notify-send "🖥️ System Health" "CPU: $cpu% | RAM: $ram% | Disk: $disk%"
