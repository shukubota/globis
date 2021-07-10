FROM ubuntu:18.04

ENV APP_ROOT /work/myspace

WORKDIR $APP_ROOT

RUN apt-get update && \
    apt-get install -y nodejs && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo 'deb https://dl.yarnpkg.com/debian/ stable main' | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y yarn && \
    rm -rf /var/lib/apt/lists/*

#COPY . $APP_ROOT