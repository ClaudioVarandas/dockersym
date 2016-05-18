FROM debian:jessie

RUN echo 'deb http://mirrors.fe.up.pt/dotdeb/ stable all' >> /etc/apt/sources.list && \
    echo 'deb-src http://mirrors.fe.up.pt/dotdeb/ stable all' >> /etc/apt/sources.list && \
    apt-get update && apt-get install -y wget && \
    wget https://www.dotdeb.org/dotdeb.gpg && \
    apt-key add dotdeb.gpg && \
    apt-get update && \
    apt-get install -y nginx && \
    useradd -m me

ADD nginx.conf /etc/nginx/
ADD vhost.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/vhost.conf /etc/nginx/sites-enabled/vhost
RUN rm /etc/nginx/sites-enabled/default
RUN chown me:me -R /var/log/nginx/

CMD ["nginx"]
