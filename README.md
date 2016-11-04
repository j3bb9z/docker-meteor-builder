docker-meteor-builder
=====================

a simple Docker image that bundles meteor and it's dependencies and `meteor build`s a bundle in a controlled, constant environment.

Usage
-----

    docker run \
      --volume /path/to/app:/opt/app \
      --volume /path/to/output:/opt/bundle \
      risetechnologies/meteor-builder

additional arguments may be given and are forwarded to `meteor build`.

Use these to specify options like `--server`:

    docker run -v /path/to/app:/opt/app -v /path/to/output:/opt/bundle risetechnologies/meteor-builder --server=http://localhost:3000
