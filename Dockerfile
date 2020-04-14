# Install dependencies packages
FROM node:slim
LABEL name="nodevoid"
LABEL maintainer="matheus@matheusr.com"

ENV BASH /bin/bash

ENV DEV_MODE true
ENV DEBUG_PORT 5858
ENV NPM_CONFIG_LOGLEVEL=info

RUN apt update && \
    sleep 3 && \
    apt list --upgradable && \
    sleep 3 

# RUN apt -y install git-core curl build-essential openssl libssl-dev wget apt-utils htop
RUN apt -y install git wget apt-utils htop curl 
RUN apt -y install nodejs


WORKDIR /app
COPY ./ /app
RUN npm install

EXPOSE 8080
EXPOSE 5858

CMD ["npm", "start"]