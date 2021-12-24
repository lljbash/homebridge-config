#!/usr/bin/env bash

case "$1" in
	start)
		echo "Starting Homebridge..."
		screen -dmS hb
		screen -S hb -X stuff 'homebridge -U /opt/home/.homebridge/\n'
		exit 0
		;;

	stop)
		echo "Stopping Homebridge..."
		screen -S hb -X quit
		exit 1
		;;

	restart)
		echo "Restarting Homebridge..."
		screen -S hb -X stuff '^Chomebridge -U /opt/home/.homebridge/\n'
		exit 0
		;;

	*)
		echo "$0: unrecognized option $1"
		exit 1
		;;

esac

