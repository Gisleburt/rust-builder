FROM alpine

# Is DNS working?
RUN wget google.com
RUN apk update
RUN apk add build-base
RUN apk add rustup
RUN rustup-init -y

ENV PATH="/root/.cargo/bin:${PATH}"

ARG TARGET=aarch64-unknown-linux-musl
RUN rustup target add $TARGET
