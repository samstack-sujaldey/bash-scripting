#!/bin/bash

#############################################################################################
# Author : Sujal Dey
# Date : 1 Sep 2026
# About : This script will check service status and restart if it stopped and log the status
#############################################################################################

SERVICE=$1

if [[ $(systemctl is-active "$SERVICE") == "inactive" ]]; then
	echo "$(date): $SERVICE is down. Attempting restart..."
	echo "$(date): $SERVICE is down. Attempting restart..." >> /var/log/service_monitor.log
	systemctl restart "$SERVICE"
	sleep 2
	if [[ $(systemctl is-active "$SERVICE") == "active" ]]; then
		echo "$(date): $SERVICE is up again." 
		echo "$(date): $SERVICE is up again." >> /var/log/service_monitor.log 
	else
		echo "$(date): CRITICAL - $SERVICE failed to restart." 
		echo "$(date): CRITICAL - $SERVICE failed to restart." >> /var/log/service_monitor.log
	fi
fi
