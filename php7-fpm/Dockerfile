FROM debian:jessie
MAINTAINER Cláudio Varandas <cvarandas@gmail.com>

WORKDIR /tmp

RUN echo 'deb http://mirrors.fe.up.pt/dotdeb/ stable all' >> /etc/apt/sources.list && \
    echo 'deb-src http://mirrors.fe.up.pt/dotdeb/ stable all' >> /etc/apt/sources.list && \
    apt-get update && apt-get install -y wget && \
    wget https://www.dotdeb.org/dotdeb.gpg && \
    apt-key add dotdeb.gpg && \
    apt-get update && \
    apt-get install -y \
    php7.0-cli \
    php7.0-fpm \
    php7.0-gd \
    php7.0-curl \
    php7.0-imagick \
    php7.0-dev \
    php7.0-imap \
    php7.0-json \
    php7.0-mcrypt \
    php7.0-mongo \
    php7.0-mysql \
    php7.0-redis \
    php7.0-sqlite && \
    apt-get install -y curl && \
    curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer self-update && \
    apt-get install -y locales -qq && \
    locale-gen en_US.UTF-8 en_us && \
    dpkg-reconfigure locales && \
    dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8 && \
    useradd -m me && \
    mkdir "/run/php"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8


ADD symfony.ini /etc/php/7.0/fpm/conf.d/
ADD symfony.ini /etc/php/7.0/cli/conf.d/

ADD symfony.pool.conf /etc/php/7.0/fpm/pool.d/

COPY run.sh /run.sh

ENTRYPOINT ["/bin/bash", "/run.sh"]
