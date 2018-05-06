#!/bin/bash

set -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cd ${SCRIPT_DIR}/..

echo -e "\033[0;32mUpdate blog...\033[0m"

# Add changes to git.
git add content/.

# Commit changes.
msg="Update blog \'`date "+%Y%m%d-%H%M%S"`\'"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

