#!/bin/bash

new_IP=$(hostname --ip-address)
echo "Changing 127.0.0.1 to ${new_IP} in package.json"
sed -i "s/127.0.0.1/${new_IP}/g" package.json