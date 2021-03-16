#!/bin/bash
readonly ARES_HOME_DIR=${ARES_HOME_DIR:-'/home/jenkins/ares.git'}
readonly IMAGE_NAME=${1}
readonly IMAGE_TAG_NAME=${2}

readonly IMAGE_HOME="${ARES_HOME_DIR}/${IMAGE_NAME}"

if [ ! -d "${IMAGE_HOME}" ]; then
  echo "No folder for image ${IMAGE_NAME} in ${ARES_HOME_DIR}."
  exit 1
fi

cd "${IMAGE_HOME}"

if [ ! -e ./Dockerfile ]; then
  echo "No Dockerfile in ${IMAGE_HOME}."
  exit 2
fi

podman build . -t "${IMAGE_TAG_NAME}"
