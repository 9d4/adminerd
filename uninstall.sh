#!/bin/bash
[[ "$UID" -eq 0 ]] || exec sudo "$0" "$@"

ADMINER_BIN="/usr/bin/adminer"
ADMINER_SERVICE="/etc/systemd/system/adminerd.service"
LIB_DIR="/usr/lib/adminer"

systemctl stop adminerd
systemctl disable adminerd

rm -f $ADMINER_BIN $ADMINER_SERVICE
rm -rf $LIB_DIR
