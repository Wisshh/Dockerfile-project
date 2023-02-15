FROM ubuntu
RUN apt-get update && apt-get install apache2 -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/diffuso.zip /var/ww/html/
RUN apt-get install unzip -y && unzip /var/www/html/diffuso.zip -d /var/www/html
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]

