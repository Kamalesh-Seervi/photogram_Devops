FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /var/www
RUN apt update
RUN apt upgrade -y
RUN apt install apache2 -y
RUN apt install mysql-server -y
# RUN rm /var/www/html/index.html
# COPY ./taxservice /var/www/html/
CMD /usr/sbin/apache2ctl -D FOREGROUND
RUN apt install php libapache2-mod-php  php-mysql -y

# RUN systemctl restart apache2