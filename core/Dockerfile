#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository

RUN apt-get update

RUN apt-get install -y libboost-program-options1.58.0 libboost-filesystem1.58.0 libboost-system1.58.0 

ADD src /app

EXPOSE 19800 19801 19802
