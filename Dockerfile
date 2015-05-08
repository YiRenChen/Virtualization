FROM debian:jessie
MAINTAINER YRC <nthuyirenchen@gmail.com>
ADD ./server.c /home/
RUN apt-get install -y gcc && \
gcc /home/server.c -o /home/server.o
ENTRYPOINT ["./home/server.o"]
