FROM alpine:latest
RUN apk add --no-cache curl bash jq

WORKDIR /app

COPY notify.sh .

RUN chmod +x notify.sh

ENTRYPOINT ["./notify.sh"]