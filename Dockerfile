FROM ubuntu:latest
LABEL maintainer "Rama Bondan Prakoso <ramanarubp@gmail.com>"

RUN apt update && apt install \
    git nano zip bc make gcc curl python make \
    && rm -rf /var/lib/apt/lists/*
