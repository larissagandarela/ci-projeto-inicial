FROM golang:1.22

EXPOSE 8080

WORKDIR /app

COPY ./main main

CMD [ "./main" ]
