DOC_DIR = docs
DOCKER_IMAGE = muxpi-doc-image
DOCKER_CONTAINER = muxpi-doc-container
DOCKER_CONTAINER_WORKDIR = /doc

.PHONY: docs
docs: docs-sphinx

.PHONY: clean
clean-docs: clean-docs-sphinx clean-docker-sphinx

.PHONY: docs-sphinx
docs-sphinx: docker-image-sphinx
	docker run --rm=true \
		--volume `pwd`:${DOCKER_CONTAINER_WORKDIR} \
		--user `id -u $$USER`:`id -g $$USER` \
		--name ${DOCKER_CONTAINER} ${DOCKER_IMAGE} \
		make -C ${DOC_DIR} html

.PHONY: docker-image-sphinx
docker-image-sphinx:
	docker build -t ${DOCKER_IMAGE} ${DOC_DIR}

clean-docs-sphinx:
	-rm -r ${DOC_DIR}/html
	-rm -r ${DOC_DIR}/doctrees

clean-docker-sphinx:
	-docker rm ${DOCKER_CONTAINER}
	-docker rmi ${DOCKER_IMAGE}

