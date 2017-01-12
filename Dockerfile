FROM alpine:latest

COPY foo.sh /usr/bin/foo
ENTRYPOINT /bin/sh
