MODDIR=${0%/*}/..

export TMP_PATH=/sbin
[ -d /sbin ] || export TMP_PATH=/debug_ramdisk
[ ! -d /data/adb/ap ] || export TMP_PATH=/dev/debug_ramdisk

exec $MODDIR/bin/zygisk-ptrace64 ctl $*
