which jq &> /dev/null
if [[ $? -ne 0 ]]
then
    echo "Please install jq first, see https://stedolan.github.io/jq/"
    exit 1
fi
name=$(curl -s https://randomuser.me/api/)

first=$(echo $name | jq .results[0].name | jq .first | sed 's/"//g')
last=$(echo $name | jq .results[0].name | jq .last | sed 's/"//g')

export RM_NAME="${first^} ${last^}"
