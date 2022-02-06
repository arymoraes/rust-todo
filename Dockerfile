FROM rust:1 as builder
WORKDIR /app
COPY . .
RUN cargo install --path .


FROM debian:buster-slim as runner
COPY --from=builder /usr/local/cargo/bin/hello-rocket /usr/local/bin/hello-rocket
ENV ROCKET_ADDRESS=0.0.0.0
EXPOSE 8000
CMD ["hello-rocket"]