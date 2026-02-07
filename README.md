https://images.chainguard.dev/directory/image/go/overview
https://go.dev/doc/tutorial/web-service-gin#prerequisites

go mod init albums
go get github.com/gin-gonic/gin
go build
go run main.go

docker build . -t albums
docker run -p 8080:8080 albums
