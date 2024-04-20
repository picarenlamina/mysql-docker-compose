FROM mysql

MAINTAINER csgeek@mail.com

ENV MYSQL_ROOT_PASSWORD=password

ENV MYSQL_DATABASE=mydatabase

RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/

ADD data.sql /docker-entrypoint-initdb.d

EXPOSE 3306
