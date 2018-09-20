FROM debian:9

RUN echo 'deb http://ftp.debian.org/debian stretch-backports main' >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y debhelper dh-golang dh-systemd golang-1.10-go crossbuild-essential-armhf git

RUN mkdir -p -m=0777 /workdir /workdir/source
WORKDIR /workdir/source


ADD build.sh /
CMD ["/build.sh"]
