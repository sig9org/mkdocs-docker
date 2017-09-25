FROM alpine:3.5

RUN apk add --update python py-pip \
 && pip install --upgrade pip \
 && pip install mkdocs \
 && pip install mkdocs-material \
 && pip install pygments \
 && pip install hbfm \
 && rm -rf /var/cache/apk/*

WORKDIR /docs

VOLUME /docs
EXPOSE 8000

ENTRYPOINT ["mkdocs"]
