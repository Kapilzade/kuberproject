FROM centos:latest
MAINTAINER kapilzade786@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page282/astro-motion.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip astro-motion.zip
RUN cp -rvf astro-motion/*
RUN rm -rf astro-motion.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
