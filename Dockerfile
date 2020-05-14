FROM alpine:latest

RUN apk --no-cache add openssl ca-certificates

COPY sslverify /usr/local/bin/sslverify

RUN chmod +x /usr/local/bin/sslverify

ENTRYPOINT ["/usr/local/bin/sslverify"]
