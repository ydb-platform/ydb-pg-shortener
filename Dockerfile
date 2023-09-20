FROM golang:1.21

ENV PG_HOST=localhost
ENV PG_PORT=5432
ENV PG_DATABASE=local
ENV PG_USER=root
ENV PG_PASSWORD=1234

EXPOSE 8080

COPY src /src
RUN cd /src && go build -o /shortener
CMD sleep 30 && /shortener --connection-string="postgres://$PG_USER:$PG_PASSWORD@$PG_HOST:$PG_PORT/$PG_DATABASE?sslmode=disable"
