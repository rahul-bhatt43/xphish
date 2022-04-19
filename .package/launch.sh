#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export XPHISH_ROOT="/data/data/com.termux/files/usr/opt/xphish"
else
	export XPHISH_ROOT="/usr/opt/xphish"
fi

cd $XPHISH_ROOT
bash ./xphish.sh
