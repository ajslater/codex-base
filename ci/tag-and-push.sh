#!/bin/bash
set -euo pipefail
# shellcheck disable=SC1091
source ./env
VERSION=${BASE_VERSION}_${PKG_VERSION}
TAG=$VERSION-$(echo "$CIRCLE_SHA1" | head -c 7)
docker tag "$IMAGE" "$IMAGE:$TAG"
docker tag "$IMAGE" "$IMAGE:latest"
docker login -u="$DOCKER_USER" -p="$DOCKER_PASS"
docker push "$REPO"
