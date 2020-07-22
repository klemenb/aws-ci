FROM python:3-alpine3.12

LABEL maintainer="klemen.bratec@gmail.com"

RUN apk add --no-cache bash curl groff git && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install