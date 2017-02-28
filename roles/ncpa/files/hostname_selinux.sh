#!/bin/bash
# Script:       hostname.sh
# Purpose:      show only hostname (check whether you're calling NCPA from the expected server) as well as SElinux status
echo "Server: $(/usr/bin/hostname) with SELinux in $(getenforce) mode. Mode from config file: $(sestatus | awk '/Mode from config file/ {print $NF}')"
