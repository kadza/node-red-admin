#!/bin/sh
set -e

mkdir -p /data/projects/.sshkeys
# I wanted to use symbolic links in dockerfile, but node-red admin expects a file, so copying necessary
# node-red expects files to start with username
cp /run/secrets/user_ssh_key /data/projects/.sshkeys/admin_id_rsa
cp /run/secrets/user_ssh_pub_key /data/projects/.sshkeys/admin_id_rsa.pub
# when I cused COPY in dockerfile, the files weren't copied
cp /tmp/settings.js /data/settings.js

# it isn't fully secure but the package is publicly available
# https://www.alexandraulsh.com/2018/06/25/docker-npmrc-security/
rm -f /data/.npmrc
touch /data/.npmrc
echo "//npm.pkg.github.com/:_authToken=$NPM_TOKEN" >>/data/.npmrc
echo "@kadza:registry=https://npm.pkg.github.com" >>/data/.npmrc

npm --no-update-notifier --no-fund start --cache /data/.npm -- --userDir /data
