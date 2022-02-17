#!/bin/bash

docker exec -it "$1" /bin/mkdir -p /etc/systemd/system/containerd.service.d
docker cp 10-proxy.conf "$1:/etc/systemd/system/containerd.service.d/10-proxy.conf"
docker cp config.toml "$1:/etc/containerd/config.toml"
docker exec -it "$1" /bin/systemctl daemon-reload
docker exec -it "$1" /bin/systemctl restart containerd
