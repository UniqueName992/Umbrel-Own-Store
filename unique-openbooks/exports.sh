export RM_NAME_name=$(curl -s https://randomuser.me/api/)
export RM_NAME_first=$(echo $RM_NAME_name | jq ."results[0]".name.first | sed 's/"//g')
export RM_NAME_last=$(echo $RM_NAME_name | jq ."results[0]".name.last | sed 's/"//g')
export RM_NAME="$RM_NAME_first $RM_NAME_last"
