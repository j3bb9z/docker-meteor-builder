#!/bin/bash
set -e

cd /opt/app

meteor npm install
meteor --unsafe-perm remove-platform android
meteor --unsafe-perm remove-platform ios
meteor --unsafe-perm build --directory /opt/bundle "$@"
