#Download base image ubuntu 16.04
FROM vigcoin/coind

# Update Ubuntu Software repository

RUN apt-get update && apt-get install -y redis-server git curl supervisor build-essential libboost-all-dev net-tools

RUN git clone https://github.com/vigcoin/pool.git /pool

RUN cd /pool

WORKDIR /pool

RUN curl -o- https://raw.githubusercontent.com/calidion/chinese-noder-the-easy-way/master/install.sh?ver=1.1 | bash

RUN export NVM_DIR="$HOME/.nvm" && \. "$NVM_DIR/nvm.sh" && nvm install v8.11.2 && nvm use v8.11.2 && npm install -g http-server && npm install -g pm2 && npm install

RUN git clone https://github.com/vigcoin/pool-site.git /www

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf  

EXPOSE 19800 19801 19802 5555 6666 7777 8888 8119 8080

CMD ["/usr/bin/supervisord"]
