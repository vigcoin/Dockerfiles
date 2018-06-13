#Download base image ubuntu 16.04
FROM vigcoin/core:latest

# Update Ubuntu Software repository

RUN apt-get update && apt-get install -y redis-server git curl supervisor make g++

RUN git clone https://github.com/vigcoin/pool-runner.git /pool

RUN cd /pool

WORKDIR /pool

RUN curl -o- https://raw.githubusercontent.com/calidion/chinese-noder-the-easy-way/master/install.sh?ver=1.1 | bash

# RUN export NVM_DIR="$HOME/.nvm" && \. "$NVM_DIR/nvm.sh" nvm install v8.11.2 && npm install -g pm2 && pm2 install typescript
RUN export NVM_DIR="$HOME/.nvm" && \. "$NVM_DIR/nvm.sh" && npm install -g typescript ts-node && npm install

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf 

EXPOSE 19800 19801 19802 3333 4444 5555 6666 8119

CMD ["/usr/bin/supervisord"]
