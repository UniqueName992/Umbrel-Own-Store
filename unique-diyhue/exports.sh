DIYHUE_CONFIG=${UMBREL_ROOT}/data/storage/conf/diyhue/net.json
mkdir ${UMBREL_ROOT}/data/storage/conf/diyhue -p
if [ ! -f $DIYHUE_CONFIG ]
then
  #device
  diyhue_dev=$( ip -json route | jq -r '.[] | select( .dst == "default" ).dev' )
  #subnet
  diyhue_sub=$( ip -json route | jq -r ' .[] | select( .dev == "'$diyhue_dev'" and .scope == "link" ).dst ' )
  #gateway
  diyhue_gaw=$( ip -json route | jq -r '.[] | select( .dst == "default" ).gateway' )
  #ip
  diyhue_hip=$( ip -json route | jq -r ' .[] | select( .dev == "'$diyhue_dev'" and .scope == "link" ).prefsrc ' )
  #new ip
  if [ $( echo $diyhue_hip | cut -d '.' -f 4 ) -gt 253 ] ; then
    diyhue_nip=$( echo $diyhue_hip | cut -d '.' -f 1,2,3 ).253
  else
    diyhue_nip=$( echo $diyhue_hip | cut -d '.' -f 1,2,3 ).$(( $( echo $diyhue_hip | cut -d '.' -f 4 ) + 1 ))
  fi
  #Write Out
  diyhue_json='{
    "interface": "'$diyhue_dev'",
    "subnet": "'$diyhue_sub'",
    "gateway": "'$diyhue_gaw'",
    "IP": "'$diyhue_nip'"
  }'
  echo $diyhue_json | jq | tee $DIYHUE_CONFIG
fi

export DIYHUE_INTERFACE=$( cat $DIYHUE_CONFIG | jq -r .interface )
export DIYHUE_SUBNET=$( cat $DIYHUE_CONFIG | jq -r .subnet )
export DIYHUE_GATEWAY=$( cat $DIYHUE_CONFIG | jq -r .gateway )
export DIYHUE_IP=$( cat $DIYHUE_CONFIG | jq -r .IP )
