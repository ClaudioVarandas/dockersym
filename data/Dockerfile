FROM debian:jessie
MAINTAINER Cláudio Varandas <cvarandas@gmail.com>

RUN useradd -m me

COPY run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/bin/bash", "/run.sh"]

CMD [""]
