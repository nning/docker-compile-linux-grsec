FROM teffcz/arch-linux:latest
MAINTAINER henning mueller <mail@nning.io>
RUN pacman -Sy --noconfirm base-devel vim git ruby && \
	sed -i s:md5:sha256:g /etc/makepkg.conf && \
	useradd -m compile && \
	su - compile -c "git clone git://github.com/nning/linux-grsec.git" && \
	su - compile -c "gem install nokogiri" && \
	rm -rf /var/cache/pacman/pkg/*
