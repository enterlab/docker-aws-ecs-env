FROM ubuntu
MAINTAINER "henrik@ourhub.dk"

RUN apt-get install -y curl

COPY start /usr/src/app/
COPY get-private-ip /usr/src/app/

CMD ["/usr/src/app/start"]

