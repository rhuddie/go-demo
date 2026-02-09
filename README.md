# Example Go webserver
Example project showing usage of Go webserver running in docker environment using Chainguard containers,
running in a GitHub Actions workflow.

## References
https://images.chainguard.dev/directory/image/go/overview
https://go.dev/doc/tutorial/web-service-gin#prerequisites


# Setup commands
```shell
go mod init albums
```
```shell
go get github.com/gin-gonic/gin
```
```shell
go get albums
```
```shell
go build
```
```shell
go run main.go
```
# Docker commands
```shell
docker build . -t albums
```
```shell
docker run -p 8080:8080 albums
```
# Docker compose commands
```shell
docker compose -f docker-compose.yml build
```
```shell
docker compose -f docker-compose.yml up -d
```
```shell
docker compose -f docker-compose.yml down
```
