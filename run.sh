#!/bin/bash
set -e

cd /app

meteor npm install
meteor --unsafe-perm build /bundle/ "$@"
