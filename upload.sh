#!/usr/bin/env bash

git-se e
git commit -a --allow-empty-message -m "$*"
git push origin main