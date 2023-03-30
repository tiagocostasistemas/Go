FROM golang:alpine AS builder
COPY main.go .
RUN go build -o /app main.go

FROM scratch
COPY --from=builder /app .
CMD ["/app"]
