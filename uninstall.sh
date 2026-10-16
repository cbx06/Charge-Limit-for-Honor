#!/system/bin/sh
# 卸载: 停守护并解除内核限制
pkill -f 'charge80.sh' 2>/dev/null
echo "shell 0 75 80" > /sys/class/hw_power/soc_control/control 2>/dev/null
# 保留 /data/adb/charge80/config 与日志(便于重装保留设置)