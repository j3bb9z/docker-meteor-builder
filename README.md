docker-meteor-builder
=====================

A simple docker image that bundles meteor and it's dependencies and `meteor build`s a bundle in a controlled, constant environment.  
See the docs in [docker-meteor-starter][starter-readme] for an introduction to the whole deployment process.

You need to mount your app at /app and get the bundle from /bundle when `meteor-builder` is done.

Usage
-----

    docker run \
      --volume /path/to/app:/app \
      --volume /path/to/output:/bundle \
      risetechnologies/meteor-builder

Additional arguments may be given and are forwarded to `meteor build`. It is recommended to use `--directory`
and use the output like that if possible, or compress on the host system to increase performance dramatically.

    docker run -v /path/to/app:/app -v /path/to/output:/bundle risetechnologies/meteor-builder --server-only  --directory

### Versioning

The `latest` tag is built from the `master` branch and should usually be up to date with the latest version of meteor.
It is however recommended to explicitly depend on meteor versions using docker tags like `meteor-runner:1.4.2` (especially in `FROM` directives in Dockerfiles).

[starter-readme]: https://github.com/risetechnologies/docker-meteor-starter/doc#readme
