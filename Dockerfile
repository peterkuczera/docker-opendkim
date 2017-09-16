FROM alpine:3.6

RUN apk update && \
    apk add opendkim rsyslog && \
    rm /var/cache/apk/* && \
    mkdir /run/opendkim && \
    chown -R opendkim:opendkim /run/opendkim && \
    ln -sf /dev/stdout /var/log/maillog

CMD rm -f /var/run/rsyslogd.pid && rsyslogd && opendkim -u opendkim -v -f
