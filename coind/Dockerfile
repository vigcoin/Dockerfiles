#Download base image ubuntu 16.04
FROM vigcoin/core:v2.1

# Update Ubuntu Software repository

RUN apt-get install -y supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf 

EXPOSE 19800 19801 19802

CMD ["/usr/bin/supervisord"]
