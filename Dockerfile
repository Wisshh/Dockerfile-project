FROM centos:latest
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y install java
CMD /bin/bash
RUN yum install zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/diffuso.zip /var/www/html
WORKDIR /var/www/html
RUN unzip diffuso.zip
RUN rm -rf diffuso.zip &&\
cp -rf diffuso/* . &&\
rm -rf diffuso &&
EXPOSE 80
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

