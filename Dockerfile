FROM ubuntu:focal
LABEL maintainer "Rama Bondan Prakoso <ramanarubp@gmail.com>"

RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
	bc \
	make \
	python \
	gcc \
	git \
	wget \
	libc6-dev \
	ca-certificates \
	zip


