FROM golang:1.18-alpine

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o /go-postgres

EXPOSE 8080

CMD [ "/go-postgres" ]