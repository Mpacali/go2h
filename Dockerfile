FROM alpine:3.20

ENV PORT=2777
ENV uuid=""
ENV token=""
ENV domain=""

WORKDIR /app

COPY . .

RUN apk add --no-cache bash curl coreutils procps grep \
    && chmod +x /app/seven.sh /app/sgx /app/cdx

ENTRYPOINT ["/app/seven.sh"]
