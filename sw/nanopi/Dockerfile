FROM golang:1.11.1-stretch
LABEL maintainer="Alexander Mazuruk <a.mazuruk@samsung.com>"

ENV PROJECT="github.com/SamsungSLAV/muxpi/sw/nanopi/"

RUN go get -d "${PROJECT}/..."

WORKDIR "${GOPATH}/src/${PROJECT}"

# Build stm
RUN GOOS=linux GOARCH=arm GOARM=7 go build -o /stm_armv7 ./cmd/stm/
RUN GOOS=linux GOARCH=amd64 go build -o /stm_amd64 ./cmd/stm/

# Build fota
RUN GOOS=linux GOARCH=arm GOARM=7 go build -o /fota_armv7 ./cmd/fota/
RUN GOOS=linux GOARCH=amd64 go build -o /fota_amd64 ./cmd/fota/
