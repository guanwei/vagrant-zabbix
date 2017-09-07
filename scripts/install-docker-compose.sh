#!/usr/bin/env bash

COMPOSE_VERSION=1.16.1
COMPOSE_SYMLINK_PATH=/usr/local/bin/docker-compose
COMPOSE_INSTALL_PATH=${COMPOSE_SYMLINK_PATH}-${COMPOSE_VERSION}

if [ ! -e ${COMPOSE_INSTALL_PATH} ]; then
  curl -sSL https://get.daocloud.io/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` \
    -o ${COMPOSE_INSTALL_PATH}
fi

chmod +x ${COMPOSE_INSTALL_PATH}
ln -sf ${COMPOSE_INSTALL_PATH} ${COMPOSE_SYMLINK_PATH}