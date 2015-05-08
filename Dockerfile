FROM ubuntu:latest
MAINTAINER YRC <nthuyirenchen@gmail.com>
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y vim
ADD ./server.c /home/
RUN gcc /home/server.c -o /home/server.o
ENTRYPOINT ["./home/server.o"]
