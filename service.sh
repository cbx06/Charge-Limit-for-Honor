#!/system/bin/sh
# KernelSU late_start service — 开机拉起守护(防重复)
MODDIR=${0%/*}
BIN="$MODDIR/bin/charge80.sh"
[ -f "$BIN" ] || BIN=/data/adb/charge80/charge80.sh
if ! pgrep -f 'charge80.sh' >/dev/null 2>&1; then
  nohup sh "$BIN" >/dev/null 2>&1 &
fi