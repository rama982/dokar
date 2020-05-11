FROM fedora:latest
LABEL maintainer "Rama Bondan Prakoso <ramanarubp@gmail.com>"

RUN dnf install -y \
    git-core libtool shtool which \
    hostname ccache bc gnupg1 \
    zip curl make m4 \
    diffutils openssl-devel && dnf clean all

RUN git clone --depth=1 https://github.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-6443078 /root/aosp/clang && rm -rf /root/aosp/clang/.git

RUN git clone --depth=1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 -b android-9.0.0_r50 /root/aosp/gcc-arm64 && rm -rf /root/aosp/gcc-arm64/.git

RUN git clone --depth=1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9 -b android-9.0.0_r50 /root/aosp/gcc-arm && rm -rf /root/aosp/gcc-arm/.git
