export EXTERNAL_IP=$(hostname -I | awk '{print $1}')
export RM_JWT=$(cat /proc/sys/kernel/random/uuid)
