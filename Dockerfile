FROM alpine

RUN apk update \
 && apk add rustup \
 && rustup-init -y

ENV PATH="/root/.cargo/bin:${PATH}"
