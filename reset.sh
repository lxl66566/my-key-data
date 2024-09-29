#!/usr/bin/env bash

set -euxo pipefail

read -n 1 -p "Are you sure to clean git and push force? (y/n) " answer
case ${answer:0:1} in
    y|Y )
        rm -rf .git
        git init
        git remote add origin git@github.com:lxl66566/my-key-data.git
        git add -A
        git commit -m "clean git"
        git push origin main -f
    ;;
    * )
        echo "do nothing"
        exit 1
    ;;
esac