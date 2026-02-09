FROM cgr.dev/chainguard/go AS builder
ENV DEFAULT_PORT=8080
COPY . /app
ARG PORT=${DEFAULT_PORT}}
RUN cd /app && go env && go build

FROM cgr.dev/chainguard/glibc-dynamic
ARG PORT=${DEFAULT_PORT}
COPY --from=builder /app/albums /usr/bin/

EXPOSE $PORT

ENTRYPOINT ["/usr/bin/albums"]
