FROM golang:1.22 AS build

WORKDIR /app

COPY ./go.mod /app/go.mod
COPY ./go.sum /app/go.sum
COPY ./controllers/ /app/controllers/
COPY ./database/ /app/database/
COPY ./models/ /app/models/
COPY ./routes/ /app/routes/
COPY ./main.go /app/main.go

RUN go mod download
RUN go build -o main main.go

FROM golang:1.22 AS production

EXPOSE 8080

WORKDIR /app

ENV PORT 8080
ENV DB_HOST postgres
ENV DB_USER root
ENV DB_PASSWORD root
ENV DB_NAME root
ENV DB_PORT 5432

COPY ./assets/ /app/assets/
COPY ./templates/ /app/templates/

COPY --from=build /app/main /app/main

CMD [ "./main" ]
