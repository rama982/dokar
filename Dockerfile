FROM archlinux:latest
LABEL maintainer "Rama Bondan Prakoso <ramanarubp@gmail.com>"

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
	base-devel \
	bc \
	git \
	python \
	openssh \
	wget \
	zip
