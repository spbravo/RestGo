FROM golang:1.14

WORKDIR /go/src/parseJSON
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["parseJSON"]
