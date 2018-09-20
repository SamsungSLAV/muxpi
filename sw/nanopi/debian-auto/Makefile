SRCDIR = `realpath ..`
DOCKER_IMAGE = muxpi-deb-builder-image
DOCKER_CONTAINER = muxpi-deb-builder-container
DOCKER_CONTAINER_SRCDIR = /workdir/source

.PHONY: all build-deb build-docker-image clean clean-deb clean-docker

all: build-deb

clean: clean-deb clean-docker

build-deb: build-docker-image
	docker run --rm=true \
		--volume ${SRCDIR}:${DOCKER_CONTAINER_SRCDIR} \
		--user `id -u $$USER`:`id -g $$USER` \
		--name ${DOCKER_CONTAINER} ${DOCKER_IMAGE}

build-docker-image:
	docker build -t ${DOCKER_IMAGE} .

clean-deb:
	-rm -r ${SRCDIR}/output

clean-docker:
	-docker rm ${DOCKER_CONTAINER}
	-docker rmi ${DOCKER_IMAGE}
