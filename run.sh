#!/bin/bash
set -e

cd /opt/app

meteor npm install
meteor --unsafe-perm build /opt/bundle/ "$@"
