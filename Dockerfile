FROM ubuntu
MAINTAINER Brandon R. Stoner <monokrome@monokro.me>

WORKDIR /tmp

RUN apt-get update -y && apt-get install -y make g++ libzmq-dev
RUN wget https://github.com/zedshaw/mongrel2/tarball/v1.8.0 && tar -xvf v1.8.0 && cd zedshaw-mongrel2-bc721eb && make install && cd .. && rm -rf zedshaw-mongrel-*
RUN apt-get purge -y make g++ libzmq-dev

ENTRYPOINT ["m2sh"]
