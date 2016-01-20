FROM postgres
MAINTAINER James Kingsmill james.kingsmill@gmail.com

ENV POSTGRES_PASSWORD=Password123
ENV PGDATA=/var/lib/data
ENV POSTGRES_DB=emailer

COPY initialize.sql /docker-entrypoint-initdb.d

EXPOSE 5432
