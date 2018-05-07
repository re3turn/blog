#!/bin/bash

set -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cd ${SCRIPT_DIR}/..

git pull origin master
echo -e "\033[0;32mUpdate blog...\033[0m"

# Delete unsupported character code in XML
sed -i -e $'s/\x8//g' content/post/*.md

# Add changes to git.
git add content/.

# Commit changes.
msg="Update blog '`date "+%Y%m%d-%H%M%S"`'"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

