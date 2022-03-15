#!/bin/bash
[[ "$UID" -eq 0 ]] || exec sudo "$0" "$@"

# constants
ADMINER_BIN="/usr/bin/adminer"
ADMINER_EXEC="/usr/lib/adminer/adminer-start"
ADMINERD="./adminerd.service"
BIN_DIR="/usr/bin"
LIB_DIR="/usr/lib/adminer"
SYSTEM_SERVICE_DIR="/etc/systemd/system"

LOCAL_BIN_DIR="./bin"
LOCAL_LIB_DIR="./lib"

# make lib dir
rm -rf $LIB_DIR && mkdir $LIB_DIR

# copy local lib to $LIB_DIR
cp -rT $LOCAL_LIB_DIR $LIB_DIR

# copy local bin to $BIN_DIR
cp -rT $LOCAL_BIN_DIR $BIN_DIR

# change permission
chmod +x $ADMINER_BIN
chmod +x $ADMINER_EXEC

# copy service
cp -f $ADMINERD $SYSTEM_SERVICE_DIR

# reload daemon
systemctl daemon-reload

# start service
systemctl start adminerd.service
