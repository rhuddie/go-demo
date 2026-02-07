FROM cgr.dev/chainguard/go AS builder
COPY . /app
RUN cd /app && go env && go build

FROM cgr.dev/chainguard/glibc-dynamic
COPY --from=builder /app/albums /usr/bin/

EXPOSE 8080

ENTRYPOINT ["/usr/bin/albums"]
