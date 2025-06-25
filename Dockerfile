FROM alpine:3.20

ENV PORT=2777
ENV uuid=""
ENV token=""
ENV domain=""

WORKDIR /app

COPY . .

RUN apk add --no-cache bash curl coreutils procps grep \
    && chmod +x seven.sh sgx cdx

ENTRYPOINT ["seven.sh"]
