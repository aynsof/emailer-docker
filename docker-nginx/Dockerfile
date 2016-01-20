FROM ubuntu
MAINTAINER James Kingsmill james.kingsmill@gmail.com

RUN apt-get update
RUN apt-get install -y nginx
RUN sed -i 's/nginx/DOCKER/g' /usr/share/nginx/html/index.html

#RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN mkdir -p /var/www
RUN echo 'helloworld' > /var/www/index.html

ADD nginx.conf /etc/nginx/nginx.conf
ADD sites-enabled-default.conf /etc/nginx/sites-available/default

EXPOSE 80
CMD ["nginx"]
