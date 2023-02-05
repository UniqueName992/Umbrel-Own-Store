#export diyhue_ip=sed -n '1p' diyhue.conf
#export diyhue_subnet=sed -n '2p' diyhue.conf
#export diyhue_gateway=sed -n '3p' diyhue.conf

#echo $(hostname -I | awk '{print $1}' | cut -d '.' -f 4)
#diyhue_ip $(hostname -I | awk '{print $1}')
