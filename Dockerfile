FROM teffcz/arch-linux:latest
MAINTAINER henning mueller <mail@nning.io>
RUN pacman -Sy --noconfirm base-devel vim git
