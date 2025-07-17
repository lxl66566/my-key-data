#!/usr/bin/env bash

set -euxo pipefail

git-se e
git commit -a --allow-empty-message -m "$*"
git push origin main