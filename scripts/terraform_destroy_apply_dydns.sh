terraform init
terraform destroy -auto-approve
terraform apply -auto-approve

# Set minecraft.allanwilson.net:25565 to the new public IP address using Dynamic DNS
ALLUCLOUD_IP_OUTPUT=$(terraform output)
ALLUCLOUD_IP=${ALLUCLOUD_IP_OUTPUT:5}
wget https://directnic.com/dns/gateway/72f11b97abe0c7729c19d66d39cee384e4b33ddaa7fc8e12d75928f6da744a81/?data=$ALLUCLOUD_IP