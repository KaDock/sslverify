FROM alpine:latest

RUN apk --no-cache add openssl ca-certificates

COPY entry.sh /entry.sh

RUN chmod +x /entry.sh

ENTRYPOINT ["/entry.sh"]
