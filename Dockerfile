FROM golang:1.11-alpine3.8

RUN apk add --no-cache git make openssl

RUN git clone https://github.com/inconshreveable/ngrok.git /ngrok

ADD *.sh /

ENV DOMAIN **None**
ENV MY_FILES /myfiles
ENV TUNNEL_ADDR :8880
ENV HTTP_ADDR :80
ENV HTTPS_ADDR :443

EXPOSE 8880
EXPOSE 80
EXPOSE 443

CMD /bin/sh
