FROM php:7.4-apache
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "php", "./home.blade.php" ]
EXPOSE 80