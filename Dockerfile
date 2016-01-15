FROM ubuntu
MAINTAINER "henrik@enterlab.dk"

RUN apt-get install -y curl

COPY start /usr/src/app/

CMD ["/usr/src/app/start"]

