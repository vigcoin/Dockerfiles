#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository

RUN apt-get update

RUN apt-get install -y git libboost-program-options1.58.0 libboost-filesystem1.58.0 libboost-system1.58.0 
RUN git clone --depth=1 https://github.com/vigcoin/coin.git .coin

RUN cd .coin
RUN mkdir -p build
RUN cd build
RUN cmake ..
RUN make
RUN cd ../../
RUN mkdir -p /app
RUN cp .coin/build/src/vigcoind /app
RUN cp .coin/build/src/simplewallet /app
RUN rm -rf .coin

EXPOSE 19800 19801 19802
