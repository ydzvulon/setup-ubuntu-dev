#!/usr/bin/env bash

set -x
set -e

MY_DIR=$(dirname $(realpath $0))

echo "--- Install OS base tools ---"
bash $MY_DIR/vparts/install_os_base_tools.sh

echo "--- Install Task Go ----"
which task \
    && echo "taskgo already installed" \
    || sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin

echo "--- Install Rest With Taskfile ---"
task install-all -d $MY_DIR 
