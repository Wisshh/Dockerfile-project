FROM ubuntu 
RUN apt-get update -y
RUN apt install –y apache2  
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
