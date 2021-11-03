FROM alpine:3.14

RUN apk add \
        nodejs \
        npm

RUN apk update \
      && apk upgrade \
      && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .
RUN npm install

ENTRYPOINT npm run start
