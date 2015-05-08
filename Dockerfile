FROM debian
MAINTAINER YRC <nthuyirenchen@gmail.com>
ADD ./server.c /home/
RUN apt-get update && \
apt-get install -y build-essential && \
gcc /home/server.c -o /home/server.o
ENTRYPOINT ["./home/server.o"]
