FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 zip uuzip wget
WORKDIR /var/www/html
RUN wget https://templatemo.com/download/templatemo_591_villa_agency
RUN unzip templatemo_591_villa_agency.zip
RUN cp -rvf templatemo_591_villa_agency/* .
RUN rm -rf templatemo_591_villa_agency templatemo_591_villa_agency.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
