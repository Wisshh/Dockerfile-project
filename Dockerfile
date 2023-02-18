FROM centos
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/diffuso.zip /var/ww/html
WORKDIR /var/www/html
RUN unzip diffuso.zip
RUN rm -rf diffuso.zip &&\
cp -rf diffuso/* . &&\
rm -rf diffuso &&
EXPOSE 80
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

