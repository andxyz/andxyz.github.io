#!/usr/bin/env bash

set -x
set -e

git push private master >/dev/null 2>&1
echo "updated deployer@deploy.andxyz.com:andxyz-writings.git repo"

git push origin master >/dev/null 2>&1
echo "updated git@github.com-andxyz:andxyz/andxyz-writings.git repo"

bundle exec jekyll clean >/dev/null 2>&1
bundle exec jekyll build >/dev/null 2>&1
bundle exec rake deploy >/dev/null 2>&1
echo "deployed to https://andxyz.com"

exit 0
