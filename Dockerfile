FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page251/folio.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip folio.zip
RUN cp -rvf Folio/*  .
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80

