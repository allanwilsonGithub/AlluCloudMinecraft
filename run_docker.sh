#!/usr/bin/env bash

docker build -t allu-cloud-minecraft --build-arg CACHEBUST=$(date +%s) .

docker run \
    -d \
    -it \
    --security-opt seccomp:unconfined \
    --shm-size "256M" \
    -p 25565:25565 \
    allu-cloud-minecraft \
    /bin/bash -c "chmod 777 scripts/change_package_json_IP_to_local_IPV4.sh && scripts/change_package_json_IP_to_local_IPV4.sh && /DATA/git/AllanWilsonMinecraft/start_minecraft_cloud.sh"

docker run \
    -d \
    -it \
    --security-opt seccomp:unconfined \
    --shm-size "256M" \
    -p 25565:25565 \
    allu-cloud-minecraft \
    /bin/bash -c "/DATA/git/AllanWilsonMinecraft/start_minecraft_cloud.sh"