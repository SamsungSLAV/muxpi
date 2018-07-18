DOCKER_IMAGE = muxpi-doc-image
DOCKER_CONTAINER = muxpi-doc-container
DOCKER_CONTAINER_WORKDIR = /doc

.PHONY: all clean build-docker-image clean-docker

all: build-docker-image

clean: clean-docker

build-docker-image:
	docker build -t ${DOCKER_IMAGE} docker

clean-docker:
	-docker rm ${DOCKER_CONTAINER}
	-docker rmi ${DOCKER_IMAGE}

