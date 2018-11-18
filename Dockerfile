ARG ALPINE_VERSION=latest
FROM johannweging/base-alpine:${ALPINE_VERSION}

RUN set -x \
 && apk add --no-cache --update darkhttpd \
 && rm -rf /var/cache/apk/* \
 && mkdir /www
        

EXPOSE 80

ENTRYPOINT [ "/usr/bin/dumb-init", "--"]
CMD ["/usr/bin/darkhttpd", "/www" ]
