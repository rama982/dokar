FROM ubuntu:focal
LABEL maintainer "Rama Bondan Prakoso <ramanarubp@gmail.com>"

RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
	bc \
	bison \
	ca-certificates \
	curl \
	flex \
	gcc \
	git \
	libc6-dev \
	libssl-dev \
	make \
	openssl \
	python \
	ssh \
	wget \
	zip

