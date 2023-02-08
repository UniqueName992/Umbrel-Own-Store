AppDir=${UMBREL_ROOT}/app-data/unique-code-server
ConfDir=${UMBREL_ROOT}/data/storage/unique/code-server
mkdir -p $ConfDir
if [ ! -f $ConfDir/compose-mod.yml ]
then
    cp $AppDir/compose-mod.yml $ConfDir/compose-mod.yml
fi
yq eval-all '. as $item ireduce ({}; . *+ $item)' $AppDir/docker-compose-template.yml $ConfDir/compose-mod.yml > $AppDir/docker-compose.yml
export UNIQUE_APP_DATA_DIR=${ConfDir}/data
if [ ! -f $ConfDir/data ]
then
    cp $AppDir/data-template $ConfDir/data -r
fi
if [ ! -f $AppDir/data ]
then
    ln -sf $ConfDir/data $AppDir/data
fi