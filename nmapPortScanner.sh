#! /bin/bash

echo "Enter the starting IP address : "
read FirstIP

echo "Enter the last octet of the last IP Address : "
read lastOctetIP

echo "Enter the port number you want to scan for : "
read port

nmap -sT $FirstIP-$lastOctetIP -p $port >/dev/null -oG nmapScanTool

cat nmapScanTool | grep open > nmapScanTool2

cat nmapScanTool2