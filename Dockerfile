FROM node:4.6.1

MAINTAINER risetechnologies

RUN curl https://install.meteor.com/ | sh \
  && apt-get update \
  && apt-get install -y build-essential g++

VOLUME /bundle

ENTRYPOINT cd /app && meteor npm install && exec "$0" "$@"
CMD ["meteor", "--unsafe-perm", "build", "--server-only", "--directory", "/bundle"]
