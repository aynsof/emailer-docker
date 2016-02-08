# emailer-docker

app:
Expects an env.list file with the following values:
DB_PASSWORD=_______
DB_IP_ADDR=________

Build with:
docker build -t aynsof/emailer-app .
Run with:
docker run -p 4567:4567 --name emailer-app --env-file ./env.list -d aynsof/emailer-app

nginx:
docker build -t aynsof/emailer-nginx .
docker run -p 80:80 aynsof/emailer-nginx

postgres:
docker build -t aynsof/postgres .
docker run --name pg01 -p 5432:5432 aynsof/postgres

varnish:
docker build -t aynsof/emailer-varnish .
docker run -p 6081:6081 --name emailer-varnish -d aynsof/emailer-varnish
