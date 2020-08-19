#!/bin/bash

yarn install
ls -la
echo "${INPUT_KEYSTORE}" > keystore.b64
base64 -d keystore.b64 > ./android/app/keystore.jks

export KEYSTORE_DIRECTORY=/github/workspace/android/app
export KEYSTORE_PASSWORD=$INPUT_KEYSTORE_PASSWORD
export KEYSTORE_ALIAS=$INPUT_KEYSTORE_ALIAS

sh -c "echo $*"
sh -c "$*"