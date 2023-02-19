FROM ubuntu 
RUN apt-get update -y
RUN apt-get install apache2 -y 
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
