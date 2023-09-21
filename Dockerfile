FROM golang:1.21

ENV PG_HOST=localhost
ENV PG_PORT=5432
ENV PG_DATABASE=local
ENV PG_USER=root
ENV PG_PASSWORD=1234
ENV LISTEN_POST=8080

EXPOSE :$LISTEN_POST

COPY src /src
RUN cd /src && go build -o /shortener
CMD /shortener --listen=:$LISTEN_POST --connection-string="postgres://$PG_USER:$PG_PASSWORD@$PG_HOST:$PG_PORT/$PG_DATABASE?sslmode=disable"

HEALTHCHECK --interval=1s --timeout=1s \
    CMD curl --fail http://localhost:8080/ping
