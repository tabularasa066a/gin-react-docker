# Dockerfile
FROM golang:1.15

ENV SRC_DIR=/go/src/github.com/gouser/money-boy/api
ENV GOBIN=/go/bin

# WORKDIR $GOBIN
WORKDIR $SRC_DIR
ADD ./api $SRC_DIR
RUN cd /go/src/;

# Installing dependency module
RUN go get github.com/go-sql-driver/mysql \
    && go get -u github.com/gin-gonic/gin \
    && go get github.com/gorilla/mux \
    && go get -u github.com/jinzhu/gorm \
    && go get github.com/gin-contrib/cors \
    && go get gopkg.in/ini.v1

ENTRYPOINT ["go", "run", "main.go"]
