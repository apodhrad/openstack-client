#!/bin/sh
TAG="5.3.1"
DOCKER_REGISTRY="docker.io"
DOCKER_IMAGE_NAME="${DOCKER_REGISTRY}/openstack-client"

docker rmi --force=true ${DOCKER_IMAGE_NAME}:${TAG}
docker build --force-rm=true --rm=true -t ${DOCKER_IMAGE_NAME}:${TAG} . || exit 1

echo =========================================================================
echo Docker image is ready.  Try it out by running the following command:
echo     docker run -it --rm --name=openstack-client --env-file openstack.env ${DOCKER_IMAGE_NAME}:${TAG}
echo =========================================================================
