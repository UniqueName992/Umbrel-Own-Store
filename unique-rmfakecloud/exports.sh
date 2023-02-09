AppID=rmfakecloud
AppDir=${UMBREL_ROOT}/app-data/unique-$AppID
ConfDir=${UMBREL_ROOT}/data/storage/unique-store/$AppID
source $AppDir/unique-store.sh


export EXTERNAL_IP=$(hostname -I | awk '{print $1}')
export RM_JWT=$(cat /proc/sys/kernel/random/uuid)
