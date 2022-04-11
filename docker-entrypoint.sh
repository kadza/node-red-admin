#!/bin/sh
set -e

cp -R /tmp/.ssh /usr/src/node-red/.ssh
chmod 700 /usr/src/node-red/.ssh
chmod 644 /usr/src/node-red/.ssh/id_rsa.pub
chmod 600 /usr/src/node-red/.ssh/id_rsa

npm --no-update-notifier --no-fund start --cache /data/.npm -- --userDir /data