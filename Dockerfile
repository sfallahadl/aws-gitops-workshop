FROM golang:1.15-alpine as markdown

RUN apk update && apk upgrade && \
    apk add --no-cache git 

WORKDIR /tmp/src

COPY . . 

RUN git submodule update --init --recursive

FROM klakegg/hugo:0.71.0-ext-alpine as hugo

COPY --from=markdown /tmp/src /src

RUN hugo -D -d public

FROM nginx:1.21-alpine

COPY --from=hugo /src/public /usr/share/nginx/html