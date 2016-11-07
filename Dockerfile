FROM teffcz/arch-linux:latest
MAINTAINER henning mueller <mail@nning.io>
RUN pacman -Sy --noconfirm base-devel vim git ruby && \
	sed -i s:md5:sha256:g /etc/makepkg.conf
