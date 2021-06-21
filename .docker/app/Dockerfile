FROM node:lts

## Instalação de programas auxiliares
RUN apt-get update && \
    apt-get install -y \
    zip \
    libzip-dev \
    libpng-dev \
    libjpeg-dev \
    unzip \
    wget \
    git \
    nano \
    python3 \
    gnupg \
    libpq-dev \
    unzip \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    $PHPIZE_DEPS


## Instalação de Adonis CLI e adição de UID de usuário hospedeiro no usuário do container
RUN usermod -u 1000 node && npm i -g @adonisjs/cli

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /home/node

USER node

EXPOSE 3333