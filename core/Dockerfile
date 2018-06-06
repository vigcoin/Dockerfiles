#Download base image ubuntu 16.04
FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install -y libboost-all-dev

# Update Ubuntu Software repository

ADD src /app

EXPOSE 19800 19801 19802

# CMD ["/app/vigcoind"]

# CMD ["/app/simplewallet --wallet-file /wallet/mywallet.wallet --password 'aaaa' --daemon-port 19801 --rpc-bind-port 19802 >> /wallet/log/simplewallet.log"]
