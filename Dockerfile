FROM alpine:latest

COPY entrypoint.sh /entrypoint.sh
RUN chmod 0777 /entrypoint.sh

ENTRYPOINT /bin/sh /entrypoint.sh