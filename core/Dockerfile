#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository

RUN apt-get update

RUN apt-get install -y cmake git build-essential libboost-all-dev libsodium-dev net-tools
RUN git config --global http.postBuffer 1048576000
RUN git clone --depth 1 https://github.com/vigcoin/coin.git coin

RUN cd coin && mkdir -p build && cd build && cmake .. && make
RUN mkdir -p app
RUN cp coin/build/src/vigcoind /app
RUN cp coin/build/src/simplewallet /app
RUN rm -rf coin

EXPOSE 19800 19801 19802
