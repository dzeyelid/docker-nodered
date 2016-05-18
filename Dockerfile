FROM ubuntu:16.04
MAINTAINER dzeyelid

WORKDIR /tmp

RUN apt-get -y update
RUN apt-get install -y \
    build-essential \
    libssl-dev \
    software-properties-common \
    curl
RUN curl -o installer -sL https://deb.nodesource.com/setup_6.x && \
    bash ./installer
RUN rm ./installer
RUN apt-get install -y \
    git \
    nodejs
RUN npm install -y -g i18next
RUN npm install -y -g node-red
EXPOSE 1880
ENTRYPOINT ["node-red"]