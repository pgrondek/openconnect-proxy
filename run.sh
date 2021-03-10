#!/usr/bin/env sh

CONTAINER_TAG=openconnect_vpn

docker build -t "$CONTAINER_TAG" build/

docker run \
  -it \
  --privileged \
  --cap-add NET_ADMIN \
  -e OPENCONNECT_URL= \
  -e OPENCONNECT_USER= \
  -p 9000:8888 \
  -p 9001:8889 \
  "$CONTAINER_TAG"
