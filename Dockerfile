FROM ubuntu:20.04

RUN apt update \
      && apt upgrade

RUN apt install -y nodejs
RUN apt install -y npm

RUN npm install --global yarn

WORKDIR /app
COPY . .
RUN yarn install

ENTRYPOINT yarn run start
