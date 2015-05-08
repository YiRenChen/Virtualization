FROM debian:jessie
MAINTAINER YRC <nthuyirenchen@gmail.com>
RUN apt-get install -y gcc
ADD ./server.c /home/
RUN gcc /home/server.c -o /home/server.o
ENTRYPOINT ["./home/server.o"]
