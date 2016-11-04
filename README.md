docker-meteor-builder
=====================

a simple docker image that bundles meteor and it's dependencies and `meteor build`s a bundle in a controlled, constant environment.

you need to mount your app at /app and get the bundle from /bundle when `meteor-builder` is done.

Usage
-----

    docker run \
      --volume /path/to/app:/app \
      --volume /path/to/output:/bundle \
      risetechnologies/meteor-builder

additional arguments may be given and are forwarded to `meteor build`.

Use these to specify options like `--server`:

    docker run -v /path/to/app:/app -v /path/to/output:/bundle risetechnologies/meteor-builder --server-only --server=http://localhost:3000
