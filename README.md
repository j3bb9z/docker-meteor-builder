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

The default build command is set as

    meteor --unsafe-perm build --server-only --directory /bundle

The command can be overwritten by specifying another.
`meteor npm install` will always be run before the command.
It is recommended to use `--directory` and use the output like that if possible,
or compress on the host system to increase performance dramatically.

    docker run -v /path/to/app:/app -v /path/to/output:/bundle risetechnologies/meteor-builder meteor build --directory /bundle

### Versioning

The `latest` tag is built from the `master` branch and should usually be up to date with the latest version of meteor.
It is however recommended to explicitly depend on meteor versions using docker tags like `meteor-runner:1.4.2` (especially in `FROM` directives in Dockerfiles).

[starter-readme]: https://github.com/risetechnologies/docker-meteor-starter/doc#readme
