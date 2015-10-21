FROM golang
MAINTAINER Maxime Heckel <heckelmaxime@gmail.com>

ADD . /go/src/github.com/tenxcloud/quickstart-go
RUN go get gopkg.in/mgo.v2
RUN go install github.com/tenxcloud/quickstart-go

ENV NAME world

CMD /go/bin/quickstart-go

EXPOSE 80
