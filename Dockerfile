FROM fedora:latest
LABEL maintainer "Rama Bondan Prakoso <ramanarubp@gmail.com>"

RUN dnf install -y \
    git-core libtool shtool which \
    hostname ccache bc gnupg1 \
    zip curl make m4 \
    diffutils openssl-devel && dnf clean all

