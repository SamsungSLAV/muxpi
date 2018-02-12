DOC_DIR = sphinx
DOCKER_IMAGE = muxpi-doc-image
DOCKER_CONTAINER = muxpi-doc-container
DOCKER_CONTAINER_WORKDIR = /doc

.PHONY: all clean build-doc-html build-docker-image clean-doc clean-docker

all: build-doc-html

clean: clean-doc clean-docker

build-doc-html: build-docker-image
	docker run --rm=true \
		--volume `pwd`:${DOCKER_CONTAINER_WORKDIR} \
		--user `id -u $$USER`:`id -g $$USER` \
		--name ${DOCKER_CONTAINER} ${DOCKER_IMAGE} \
		make -C ${DOC_DIR} html

build-docker-image:
	docker build -t ${DOCKER_IMAGE} docker

clean-doc:
	-rm -r ${DOC_DIR}/build

clean-docker:
	-docker rm ${DOCKER_CONTAINER}
	-docker rmi ${DOCKER_IMAGE}

