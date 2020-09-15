#!/bin/sh
TAG="5.3.1"
DOCKER_REGISTRY="docker.io"
DOCKER_IMAGE_NAME="${DOCKER_REGISTRY}/openstack-client"

ENV_FILE="$1"
ENV_CMD=""

if [[ -n $ENV_FILE ]]; then
  ENV_CMD="--env-file $ENV_FILE"
fi

docker run -it --rm --name=openstack-client $ENV_CMD ${DOCKER_IMAGE_NAME}:${TAG}
