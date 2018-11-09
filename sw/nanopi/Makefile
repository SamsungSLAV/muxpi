BUILD_DIR = bin
BUILD_DOCKER_IMAGE = muxpi-build-img
BUILD_DOCKER_CONTAINER = muxpi-build
BINARIES = muxpictl_armv7 muxpictl_amd64 fota_armv7 fota_amd64
BINARIES := $(addprefix ${BUILD_DIR}/, ${BINARIES})

.PHONY: all
all: docker-build

.PHONY: clean
clean: clean-docker-build

.PHONY: docker-build
docker-build: ${BINARIES}
	docker rm "${BUILD_DOCKER_CONTAINER}"

${BINARIES}: docker-container | ${BUILD_DIR}
	docker cp "${BUILD_DOCKER_CONTAINER}:/$(@F)" $@

.PHONY: docker-container
docker-container: docker-build-img
	docker create --name "${BUILD_DOCKER_CONTAINER}" "${BUILD_DOCKER_IMAGE}"

.PHONY: docker-build-img
docker-build-img:
	docker build --tag "${BUILD_DOCKER_IMAGE}" .

${BUILD_DIR}:
	mkdir -p "${BUILD_DIR}"

.PHONY: clean-docker-build
clean-docker-build:
	-docker rm "${BUILD_DOCKER_CONTAINER}"
	-docker rmi "${BUILD_DOCKER_IMAGE}"
	-rm -f ${BINARIES}
	-rmdir ${BUILD_DIR}

