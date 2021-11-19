FROM alpine:latest

ADD files/gh /usr/bin/gh

RUN apk update && apk add --no-cache bash git openssh

ENTRYPOINT [ "/usr/bin/gh" ]
