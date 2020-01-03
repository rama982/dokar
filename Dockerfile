FROM ubuntu:focal
LABEL maintainer "Rama Bondan Prakoso <ramanarubp@gmail.com>"

RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
	bc \
	ca-certificates \
	gcc \
	git \
	libc6-dev \
	libssl-dev \
	make \
	openssl \
	python \
	wget \
	zip

