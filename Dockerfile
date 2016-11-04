FROM node:4.6.1

MAINTAINER risetechnologies

RUN curl https://install.meteor.com/ | sh \
  && apt-get update \
  && apt-get install -y build-essential g++

COPY run.sh /opt/
VOLUME /app /bundle

ENTRYPOINT /opt/run.sh
