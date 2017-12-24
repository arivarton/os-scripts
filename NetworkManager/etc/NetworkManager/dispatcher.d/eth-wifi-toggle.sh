#!/bin/sh -e
interface=$1 status=$2
logger -p user.info 'This is the interface: ' $1
logger -p user.info 'This is the status: ' $2
if [ "$1" == 'eth' ]; then
    case "$2" in
        up)
        logger -p user.info 'Turning off wireless'
        nmcli radio wifi off
        ;;
        down)
        logger -p user.info 'Turning on wireless'
        nmcli radio wifi on
    esac
fi
