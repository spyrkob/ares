#!/bin/bash
set -eo pipefail
readonly BUILD_DIRECTORY=${BUILD_DIRECTORY:-'/workspace'}
set -u
if [ ! -d "${BUILD_DIRECTORY}" ]; then
  echo "No such directory: ${BUILD_DIRECTORY} - abort."
  exit 1
fi

cd "${BUILD_DIRECTORY}" || exit 1

yarn install
yarn build
