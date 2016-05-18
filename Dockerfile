FROM ubuntu:16.04
MAINTAINER dzeyelid

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /tmp

RUN apt-get -y update
RUN apt-get install -y \
    apt-utils \
    build-essential \
    libssl-dev \
    software-properties-common \
    curl
RUN curl -o installer -sL https://deb.nodesource.com/setup_4.x && \
    bash ./installer
RUN rm ./installer
RUN apt-get install -y \
    git \
    python \
    nodejs
RUN npm install -g i18next@2.0.0
RUN npm install --unsafe-perm -g node-red
EXPOSE 1880
ENTRYPOINT ["node-red"]