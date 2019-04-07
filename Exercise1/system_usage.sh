#!/bin/bash

#Run the script as root user

#Usage: sh system_usage.sh

free -m | awk 'NR==2{printf "\nMemory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
top -bn1 | grep load | awk -F ' ' '{printf "\nCPU Usage (Load Avg): %s %s %s %s\n\n", $10,$11,$12,$13}'

#Network Usage in eth0

Rx=`cat /sys/class/net/eth0/statistics/rx_bytes`
Tx=`cat /sys/class/net/eth0/statistics/tx_bytes`
RxBs=`expr $Rx / 1024`
TxBs=`expr $Tx / 1024`
echo "Network Usage: tx eth0: $TxBs kb/s rx eth0: $RxBs kb/s"
