FROM alpine:3.16


RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --update --no-cache \
    php81 \
    php81-json \
    php81-ctype \
    php81-exif \
    php81-session \
    php81-tokenizer \
    php81-curl \
    php81-gd \
    php81-zip 

# 设定工作目录
WORKDIR /app