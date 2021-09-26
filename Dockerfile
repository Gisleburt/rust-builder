FROM alpine

RUN apk update
RUN apk add rustup
RUN rustup-init -y

ENV PATH="/root/.cargo/bin:${PATH}"
