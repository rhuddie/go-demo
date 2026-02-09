FROM cgr.dev/chainguard/go AS builder
COPY . /app
RUN cd /app && go env && go build

FROM cgr.dev/chainguard/glibc-dynamic
ARG PORT=8080
COPY --from=builder /app/albums /usr/bin/

EXPOSE $PORT
ENV PORT=$PORT
ENTRYPOINT ["/usr/bin/albums"]
