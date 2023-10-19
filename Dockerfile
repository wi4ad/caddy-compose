FROM caddy:2.7.5-builder AS builder
RUN xcaddy build --with github.com/mholt/caddy-l4

FROM caddy:2.7.5-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy