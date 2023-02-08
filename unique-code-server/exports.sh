AppDir=${UMBREL_ROOT}/app-data/unique-code-server
ConfDir=${UMBREL_ROOT}/data/storage/unique/code-server
mkdir -p $ConfDir
if [ ! -f $ConfDir/compose-mod.yml ]
then
    cp $AppDir/compose-mod.yml $ConfDir/compose-mod.yml
fi
yq eval-all '. as $item ireduce ({}; . *+ $item)' $AppDir/docker-compose-template.yml $ConfDir/compose-mod.yml > $AppDir/docker-compose.yml
export UNIQUE_APP_DATA_DIR=${ConfDir}/data
mv $ConfDir/data $AppDir/data
ln -s $ConfDir/data $AppDir/data