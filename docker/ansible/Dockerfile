FROM alpine:3.8

RUN apk update \
    && apk add --no-cache --virtual .build-dependencies \
        python-dev \
        libffi-dev \
        openssl-dev \
        build-base \
    && apk add sudo python py-pip openssl ca-certificates \
    && pip install --upgrade pip cffi \
    && pip install cryptography==2.4.2 \
    && pip install ansible \
    && ansible-galaxy install ansistrano.deploy ansistrano.rollback \
    && apk del .build-dependencies \
    && rm -rf /var/cache/apk/*

CMD [ "ansible-playbook", "--version" ]
