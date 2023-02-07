# echo $(pwd)
AppDir=${UMBREL_ROOT}/app-data/unique-code-server
ConfDir=${UMBREL_ROOT}/data/storage/unique-conf/code-server
if [ ! -f $ConfDir/compose-mod.yml ]
then
    cp $AppDir/compose-mod.yml $ConfDir/compose-mod.yml
fi
yq eval-all '. as $item ireduce ({}; . *+ $item)' $AppDir/docker-compose.yml $ConfDir/compose-mod.yml > $AppDir/docker-compose.yml
