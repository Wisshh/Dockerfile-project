FROM centos
RUN yum install httpd -y
RUN yum clean 
EXPOSE 80
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
