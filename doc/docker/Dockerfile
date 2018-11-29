FROM alpine:3.8
LABEL maintainer="Michal Sidor <m.sidor@samsung.com>"

ENV PLANTUML_VERSION 1.2018.13

RUN mkdir -p /opt/plantuml \
 && wget https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download -O /opt/plantuml/plantuml.jar
RUN apk --no-cache add python3 make openjdk8-jre-base graphviz ttf-freefont \
    libjpeg-turbo zlib tiff \
 && apk --no-cache add -t .makedepends libjpeg-turbo-dev zlib-dev tiff-dev \
    python3-dev build-base
RUN pip3 install --upgrade pip setuptools \
 && pip3 install 'Pillow >=5.3.0,<5.4' 'Sphinx >=1.8.2,<1.9' \
    'sphinxcontrib-plantuml >=0.12,<0.13' 'sphinxcontrib-actdiag >=0.8.5,<0.9' \
    'sphinxcontrib-blockdiag >=1.5.5,<1.6' 'sphinxcontrib-seqdiag >=0.8.5,<0.9' \
 && apk --no-cache del .makedepends

ENV DATA_DIR=/doc JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk

WORKDIR $DATA_DIR
VOLUME $DATA_DIR
